.class public final Lcoil/decode/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/DecodeUtils$WhenMappings;
    }
.end annotation


# static fields
.field private static final GIF_HEADER_87A:Lokio/ByteString;

.field private static final GIF_HEADER_89A:Lokio/ByteString;

.field private static final HEIF_HEADER_FTYP:Lokio/ByteString;

.field private static final HEIF_HEADER_HEVC:Lokio/ByteString;

.field private static final HEIF_HEADER_HEVX:Lokio/ByteString;

.field private static final HEIF_HEADER_MSF1:Lokio/ByteString;

.field public static final INSTANCE:Lcoil/decode/DecodeUtils;

.field private static final WEBP_HEADER_RIFF:Lokio/ByteString;

.field private static final WEBP_HEADER_VPX8:Lokio/ByteString;

.field private static final WEBP_HEADER_WEBP:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/decode/DecodeUtils;

    invoke-direct {v0}, Lcoil/decode/DecodeUtils;-><init>()V

    sput-object v0, Lcoil/decode/DecodeUtils;->INSTANCE:Lcoil/decode/DecodeUtils;

    .line 20
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "GIF87a"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->GIF_HEADER_87A:Lokio/ByteString;

    .line 21
    const-string v1, "GIF89a"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->GIF_HEADER_89A:Lokio/ByteString;

    .line 24
    const-string v1, "RIFF"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->WEBP_HEADER_RIFF:Lokio/ByteString;

    .line 25
    const-string v1, "WEBP"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->WEBP_HEADER_WEBP:Lokio/ByteString;

    .line 26
    const-string v1, "VP8X"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->WEBP_HEADER_VPX8:Lokio/ByteString;

    .line 29
    const-string v1, "ftyp"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->HEIF_HEADER_FTYP:Lokio/ByteString;

    .line 30
    const-string v1, "msf1"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->HEIF_HEADER_MSF1:Lokio/ByteString;

    .line 31
    const-string v1, "hevc"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcoil/decode/DecodeUtils;->HEIF_HEADER_HEVC:Lokio/ByteString;

    .line 32
    const-string v1, "hevx"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcoil/decode/DecodeUtils;->HEIF_HEADER_HEVX:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calculateInSampleSize(IIIILcoil/size/Scale;)I
    .locals 1

    const-string v0, "scale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    div-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    .line 83
    div-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 84
    sget-object p3, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    if-eq p3, p2, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 85
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final computePixelSize(IILcoil/size/Size;Lcoil/size/Scale;)Lcoil/size/PixelSize;
    .locals 3

    const-string v0, "dstSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    instance-of v0, p2, Lcoil/size/OriginalSize;

    if-eqz v0, :cond_0

    new-instance p2, Lcoil/size/PixelSize;

    invoke-direct {p2, p0, p1}, Lcoil/size/PixelSize;-><init>(II)V

    return-object p2

    .line 152
    :cond_0
    instance-of v0, p2, Lcoil/size/PixelSize;

    if-eqz v0, :cond_1

    .line 153
    check-cast p2, Lcoil/size/PixelSize;

    invoke-virtual {p2}, Lcoil/size/PixelSize;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcoil/size/PixelSize;->getHeight()I

    move-result p2

    invoke-static {p0, p1, v0, p2, p3}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide p2

    .line 154
    new-instance v0, Lcoil/size/PixelSize;

    int-to-double v1, p0

    mul-double/2addr v1, p2

    .line 155
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    int-to-double v1, p1

    mul-double/2addr p2, v1

    .line 156
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    .line 154
    invoke-direct {v0, p0, p1}, Lcoil/size/PixelSize;-><init>(II)V

    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final computeSizeMultiplier(DDDDLcoil/size/Scale;)D
    .locals 1

    const-string v0, "scale"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    div-double/2addr p4, p0

    div-double/2addr p6, p2

    .line 138
    sget-object p0, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p8}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 140
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 139
    :cond_1
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final computeSizeMultiplier(IIIILcoil/size/Scale;)D
    .locals 4

    const-string v0, "scale"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p2

    int-to-double v2, p0

    div-double/2addr v0, v2

    int-to-double p2, p3

    int-to-double p0, p1

    div-double/2addr p2, p0

    .line 104
    sget-object p0, Lcoil/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 106
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 105
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method
