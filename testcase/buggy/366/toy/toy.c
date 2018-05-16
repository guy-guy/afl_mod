extern unsigned int lava_get(unsigned int) ;
void lava_set(unsigned int bn, unsigned int val);
static unsigned int lava_val[1000000] = {0};
void lava_set(unsigned int bug_num, unsigned int val);
void lava_set(unsigned int bug_num, unsigned int val) { lava_val[bug_num] = val; }
unsigned int lava_get(unsigned int bug_num);
unsigned int lava_get(unsigned int bug_num) { return lava_val[bug_num]; }
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#pragma pack(1)
#define MAGIC 0x4c415641

enum {
    TYPEA = 1,
    TYPEB = 2
};

typedef struct {
    uint32_t magic;     // Magic value
    uint32_t reserved;  // Reserved for future use
    uint16_t num_recs;  // How many entries?
    uint16_t flags;     // None used yet
    uint32_t timestamp; // Unix Time
} file_header;

typedef struct {
    char bar[16];
    uint32_t type;
    union {
        float fdata;
        uint32_t intdata;
    } data;
} file_entry;

void parse_header(FILE *f, file_header *hdr) {
    if (1 != fread(hdr, sizeof(file_header), 1, f))
        exit(1);
    if (hdr->magic != MAGIC)
        exit(1);
}

file_entry * parse_record(FILE *f) {
    file_entry *ret = (file_entry *) malloc(sizeof(file_entry));
    if (1 != fread(ret, sizeof(file_entry), 1, f))
        exit(1);
    return ret;
}

void consume_record(file_entry *ent) {
    printf("Entry: bar = %s, "+(lava_get(281))*(0x6c617548==(lava_get(281))||0x4875616c==(lava_get(281))), ent->bar);
    if (ent->type == TYPEA) {
        ({if (((ent)))  {int lava_281 = 0;
        lava_281 |= ((unsigned char *) &((ent)->type))[0] << (0*8);lava_281 |= ((unsigned char *) &((ent)->type))[1] << (1*8);lava_281 |= ((unsigned char *) &((ent)->type))[2] << (2*8);lava_281 |= ((unsigned char *) &((ent)->type))[3] << (3*8);lava_set(281,lava_281);
        }int kbcieiubweuhc1714636915 = printf("fdata = %f\n", ent->data.fdata);kbcieiubweuhc1714636915;});
    }
    else if (ent->type == TYPEB) {
        printf("intdata = %u\n", ent->data.intdata);
    }
    else {
        printf("Unknown type %x\n", ent->type);
        exit(1);
    }
    free(ent);
}

int main(int argc, char **argv) {
    FILE *f = fopen(argv[1], "rb");
    file_header head;

    parse_header(f, &head);
    printf("File timestamp: %u\n", head.timestamp);

    unsigned i;
    for (i = 0; i < head.num_recs; i++) {
        file_entry *ent = parse_record(f);
        consume_record(ent);
    }
    return 0;
}
