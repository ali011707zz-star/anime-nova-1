.class public abstract synthetic Lkotlinx/serialization/descriptors/SerialDescriptor$-CC;
.super Ljava/lang/Object;
.source "SerialDescriptor.kt"


# direct methods
.method public static $default$getAnnotations(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/List;
    .locals 0

    .line 279
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static $default$isInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 232
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 212
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic access$getAnnotations$jd(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/List;
    .locals 0

    .line 145
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$-CC;->$default$getAnnotations(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$isInline$jd(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 145
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$-CC;->$default$isInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$isNullable$jd(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 145
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$-CC;->$default$isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    return p0
.end method
