.class public final Lcom/facebook/ads/redexgen/X/6E;
.super Lcom/facebook/ads/redexgen/X/E2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KB;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 415
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1XAudPm5bNoLpQjIPSZWPFOeb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KPQovwGp6PfJEyzo2xgnSN1gmGV3wBfO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MSOuoVglH1pxZtUt86IkEaCPI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ahn71CuWf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XCR0a8v2bJ8TOqmTegoErV6kR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kQ55lQ8tRAtObxY9GvDk6DQ4l"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "65Z7gaQiVm7Q6XjyGmw2uvR6b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4ArQv5JqOif9H4kcX07xj56lI8DuBc1Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6E;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15920
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6E;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 4

    .line 15921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6E;->A00:Lcom/facebook/ads/redexgen/X/KB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A0F(Lcom/facebook/ads/redexgen/X/KB;)Lcom/facebook/ads/redexgen/X/dx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15922
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6E;->A00:Lcom/facebook/ads/redexgen/X/KB;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6E;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6E;->A01:[Ljava/lang/String;

    const-string v1, "L2P2qOlVB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/KB;->A0F(Lcom/facebook/ads/redexgen/X/KB;)Lcom/facebook/ads/redexgen/X/dx;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dx;->AKE()V

    .line 15923
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 15924
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6E;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
