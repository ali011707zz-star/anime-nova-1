.class public abstract synthetic Lkotlinx/serialization/encoding/CompositeEncoder$-CC;
.super Ljava/lang/Object;
.source "Encoding.kt"


# direct methods
.method public static $default$shouldEncodeElementDefault(Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0

    .line 0
    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic access$shouldEncodeElementDefault$jd(Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0

    .line 324
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/encoding/CompositeEncoder$-CC;->$default$shouldEncodeElementDefault(Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result p0

    return p0
.end method
