.class public final Lcom/facebook/ads/redexgen/X/Vw;
.super Lcom/facebook/ads/redexgen/X/N2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UK;->A1f(Lcom/facebook/ads/redexgen/X/VW;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/T3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vw;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69885
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N2;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vw;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1e

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

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vw;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x70t
        0x65t
        0x78t
        0x67t
        0x74t
        0x31t
        0x70t
        0x75t
        0x62t
        0x31t
        0x7ct
        0x70t
        0x7ft
        0x70t
        0x76t
        0x74t
        0x63t
        0x31t
        0x65t
        0x79t
        0x74t
        0x78t
        0x63t
        0x31t
        0x7et
        0x66t
        0x7ft
        0x31t
        0x78t
        0x7ct
        0x61t
        0x63t
        0x74t
        0x62t
        0x62t
        0x78t
        0x7et
        0x7ft
        0x62t
        0x3ft
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 1

    .line 69886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/UK;->A1d(Lcom/facebook/ads/redexgen/X/ju;)V

    .line 69887
    return-void
.end method

.method public final A0C()V
    .locals 1

    .line 69888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VP;->ACm()V

    .line 69890
    :cond_0
    return-void
.end method

.method public final A0D()V
    .locals 3

    .line 69891
    const/4 v2, 0x0

    const/16 v1, 0x29

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vw;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 1

    .line 69892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0H(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/7g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0H(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/7g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0M()V

    .line 69894
    :cond_0
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 5

    .line 69895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 69896
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    .line 69897
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A04(Lcom/facebook/ads/redexgen/X/UK;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    .line 69898
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 69899
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    .line 69900
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 69901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/VP;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 69903
    :cond_0
    return-void
.end method
