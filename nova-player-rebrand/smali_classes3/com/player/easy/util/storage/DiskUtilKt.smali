.class public final Lcom/player/easy/util/storage/DiskUtilKt;
.super Ljava/lang/Object;
.source "DiskUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "buildValidFilename",
        "",
        "origName",
        "isValidFatFilenameChar",
        "",
        "c",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiskUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskUtil.kt\ncom/player/easy/util/storage/DiskUtilKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,45:1\n1198#2,2:46\n*S KotlinDebug\n*F\n+ 1 DiskUtil.kt\ncom/player/easy/util/storage/DiskUtilKt\n*L\n14#1:46,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final buildValidFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "origName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 11
    const-string p0, "(invalid)"

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 15
    invoke-static {v2}, Lcom/player/easy/util/storage/DiskUtilKt;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x5f

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf0

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x2es
        0x20s
    .end array-data
.end method

.method private static final isValidFatFilenameChar(C)Z
    .locals 2

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x1f

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x5c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3f

    if-eq p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
