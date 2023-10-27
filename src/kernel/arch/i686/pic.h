#pragma once

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    const char* Name;
    const char* Model;
    const char* FLoc;
    bool (*Probe)();
    void (*Initialize)(uint8_t offsetPic1, uint8_t offsetPic2, bool autoEoi);
    void (*Disable)();
    void (*SendEndOfInterrupt)(int irq);
    void (*Mask)(int irq);
    void (*Unmask)(int irq);

} PICDriver;