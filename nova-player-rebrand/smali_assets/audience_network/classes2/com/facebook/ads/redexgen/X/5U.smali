.class public final Lcom/facebook/ads/redexgen/X/5U;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5S;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 400
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wKs2F0CoKZ83CrYftessGgwUooVDkZ8i"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2Ibb583RxwN39nWjhOn5WWPQj1VmynHE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "A0Qs557f"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DKPVxx7rRSfdfe4bDqdhQ5dEhLiH9LON"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bebhf1UP90kEJwgsUj64UnMMPskca"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Y97MwE7h44FvVbPafIuJT7XHPF7ToAyu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yGLwGxqGR6Hkk5b2IyfusTMojDv2e"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vJPYkkaf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5U;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5S;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15020
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 4

    .line 15021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A09(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A0A(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->ADc(I)V

    .line 15022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A00(Lcom/facebook/ads/redexgen/X/5S;)F

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0G()J

    move-result-wide v1

    long-to-float v0, v1

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    .line 15023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5S;->A01(Lcom/facebook/ads/redexgen/X/5S;F)F

    .line 15024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A0A(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x1c

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 15025
    :goto_0
    return-void

    .line 15026
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5U;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5U;->A01:[Ljava/lang/String;

    const-string v1, "gUju5w26hU6oOlSn7mf4ATVXJhH4p8zJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "33WeYKtkMTovDIRRTCZ4bD6vTYI44Qru"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5S;->A1L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->A1G()V

    goto :goto_0

    .line 15028
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A09(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dm;->ADA()V

    goto :goto_0
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

    .line 15029
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5U;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
