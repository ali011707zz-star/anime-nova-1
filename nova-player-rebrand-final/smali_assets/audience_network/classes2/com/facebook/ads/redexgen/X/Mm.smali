.class public final Lcom/facebook/ads/redexgen/X/Mm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1403
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OzZgVge9f1M6v6ECGvfzE2lelYGRNpcR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wWE4h2nZ4zwlNyDcFF4AKhs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2tlTz3YI6lX4F9BnCi72Ebdo8SjZZSMc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OEQW3vRvYAQWgt7PHCfPR8E"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3OILw1bCaEkMk35ZNNqR0SRTWeQg1PRg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i6GFbsYgPXu23Z4kIsNVdeySMROLxMHq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jYSQemNdDQ7ZZ3K3t"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DXND3IEKe4RSyw4IFeihHP08ajxTSSoO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Mm;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52518
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI()Z
    .locals 6

    .line 52519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0W(Lcom/facebook/ads/redexgen/X/MW;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 52521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v4, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mm;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52522
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 52523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A02(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 52524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A05(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0

    .line 52525
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A08(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/eS;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    .line 52526
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A08(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/eS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eS;->A0h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A02(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 52528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A05(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0

    .line 52529
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mm;->A01:[Ljava/lang/String;

    const-string v1, "6SLOwM6DBUuyj18aF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 52530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mm;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0S(Lcom/facebook/ads/redexgen/X/MW;)V

    .line 52531
    :cond_3
    :goto_0
    return v3

    .line 52532
    :cond_4
    const/4 v0, 0x0

    return v0
.end method
