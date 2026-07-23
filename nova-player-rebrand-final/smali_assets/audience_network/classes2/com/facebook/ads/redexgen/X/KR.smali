.class public final Lcom/facebook/ads/redexgen/X/KR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;->A0f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KR;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47043
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KR;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x68

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KR;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x47t
        0x39t
        0x46t
        0x33t
        0x42t
        0x35t
        0x4at
        0x3dt
        0x3bt
        0x35t
        0x48t
        0x3dt
        0x43t
        0x42t
        0x33t
        0x3dt
        0x35t
        0x36t
    .end array-data
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 2

    .line 47044
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0t(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 47045
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/16 v0, 0x64

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0Z(Lcom/facebook/ads/redexgen/X/KE;I)V

    .line 47046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0C(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 47047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0A(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0D(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0A(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A14()Ljava/lang/String;

    move-result-object v1

    .line 47049
    .local v0, "webInstallJS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0D(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/M3;->loadUrl(Ljava/lang/String;)V

    .line 47051
    .end local v0    # "webInstallJS":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 4

    .line 47052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KE;->A0t(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 47053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0C(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 47054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0a(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    .line 47055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0p(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A02(Lcom/facebook/ads/redexgen/X/KE;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 47056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KE;->A0u(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 47057
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0b(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    .line 47058
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A03(Lcom/facebook/ads/redexgen/X/KE;)I

    .line 47059
    return-void
.end method

.method public final AFY(I)V
    .locals 1

    .line 47060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0o(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0Z(Lcom/facebook/ads/redexgen/X/KE;I)V

    .line 47062
    :cond_0
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 47063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0c(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    .line 47064
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 47065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    .line 47066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    .line 47067
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 47068
    return-void
.end method
