.class public final Lcom/facebook/ads/redexgen/X/0v;
.super Lcom/facebook/ads/redexgen/X/1B;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:Lcom/facebook/ads/redexgen/X/CC;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0v;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/0v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0v;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0v;->A01:Lcom/facebook/ads/redexgen/X/CC;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 3686
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;-><init>(Ljava/lang/String;)V

    .line 3687
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0v;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x46

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0v;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0x22t
        0x2bt
        0x38t
        0x7t
        0x2bt
        0x3et
        0x29t
        0x22t
        0x2ft
        0x38t
        0x64t
        0x24t
        0x25t
        0x24t
        0x2ft
        0x62t
        0x63t
    .end array-data
.end method


# virtual methods
.method public final A08(Ljava/lang/CharSequence;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "start"
        }
    .end annotation

    .line 3688
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3689
    .local v0, "length":I
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/ki;->A01(II)I

    .line 3690
    const/4 v0, -0x1

    return v0
.end method

.method public final A09(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 3691
    const/4 v0, 0x0

    return v0
.end method
