.class public final Lcom/facebook/ads/redexgen/X/jw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/80;->A05(Lcom/facebook/ads/redexgen/X/76;Lcom/facebook/ads/redexgen/X/ji;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Z2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/80;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/76;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Z2;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jw;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/80;Lcom/facebook/ads/redexgen/X/Z2;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/76;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89214
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jw;->A01:Lcom/facebook/ads/redexgen/X/80;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jw;->A03:Lcom/facebook/ads/redexgen/X/Z2;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jw;->A00:Lcom/facebook/ads/redexgen/X/N9;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/jw;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jw;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jw;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x6dt
        -0x52t
        -0x4at
        -0x47t
        -0x4et
        -0x4ft
        0x6dt
        -0x3ft
        -0x44t
        0x6dt
        -0x4ft
        -0x44t
        -0x3ct
        -0x45t
        -0x47t
        -0x44t
        -0x52t
        -0x4ft
        0x6dt
        -0x52t
        0x6dt
        -0x46t
        -0x4et
        -0x4ft
        -0x4at
        -0x52t
        0x7bt
    .end array-data
.end method


# virtual methods
.method public final ADL()V
    .locals 6

    .line 89215
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 89216
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jw;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 89217
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jw;->A02:Lcom/facebook/ads/redexgen/X/76;

    .line 89218
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jw;->A01:Lcom/facebook/ads/redexgen/X/80;

    .line 89219
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/80;->A00(Lcom/facebook/ads/redexgen/X/80;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 89220
    invoke-interface {v3, v1, v2, v0, v4}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 89221
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jw;->A00:Lcom/facebook/ads/redexgen/X/N9;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jw;->A01:Lcom/facebook/ads/redexgen/X/80;

    .line 89222
    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    .line 89223
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->AEN(Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 89224
    return-void
.end method

.method public final ADT()V
    .locals 3

    .line 89225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jw;->A03:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Z2;->A0J()V

    .line 89226
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jw;->A00:Lcom/facebook/ads/redexgen/X/N9;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jw;->A01:Lcom/facebook/ads/redexgen/X/80;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jw;->A03:Lcom/facebook/ads/redexgen/X/Z2;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADD(Lcom/facebook/ads/redexgen/X/k8;Landroid/view/View;)V

    .line 89227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jw;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jw;->A01:Lcom/facebook/ads/redexgen/X/80;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/80;->A01(Lcom/facebook/ads/redexgen/X/80;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4O(Z)V

    .line 89228
    return-void

    .line 89229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
