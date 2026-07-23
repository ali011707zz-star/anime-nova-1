.class public final Lcom/facebook/ads/redexgen/X/5g;
.super Lcom/facebook/ads/redexgen/X/E0;
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

    .line 402
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7gUYNYKFrrI6cUcpcHgvAqL4Gs6ZbmaO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eulXJJXioKb3UmnXwerKdv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DeECHluE8BU5loeJcqNW1HYG1mHcuBH8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x81kE4wfDh8vlLxHq80CctXU2mbMn00Z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zBHmazzeC9pHgiKU9uedQ6l4AdxQz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WRgOWCAEbqLirqS5ZGHJuFqEkTHfhP5W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "572CNMLKJv9WD0LgrUqd1zfS4LkJfaLe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "B1saI0DOHUkU6pw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5g;->A01:[Ljava/lang/String;

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

    .line 15104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 10

    .line 15105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5S;->A0V(Lcom/facebook/ads/redexgen/X/5S;Z)Z

    .line 15106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    .line 15108
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A04(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15109
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v0

    .line 15110
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15111
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v6

    .line 15112
    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Mu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v3

    .line 15113
    .local v0, "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A04(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 15114
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 15115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0k()D

    move-result-wide v1

    double-to-float v0, v1

    .line 15116
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A00(F)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    .line 15117
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 15118
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Mt;->A0C(Lcom/facebook/ads/redexgen/X/Mt;)Ljava/lang/String;

    move-result-object v9

    .line 15119
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Lt;->AKh(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 15120
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5S;->A0N(Lcom/facebook/ads/redexgen/X/5S;I)V

    .line 15121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A07(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->setVisibility(I)V

    .line 15122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A07(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/LK;

    if-eqz v0, :cond_0

    .line 15123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A07(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    .line 15124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5S;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0u(I)V

    .line 15125
    .end local v0    # "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15126
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5g;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5g;->A01:[Ljava/lang/String;

    const-string v1, "UfF1b519MGYLAJGTcPK3SRNJ7v4WOh3N"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9iqifXeSGzjDh5N7cdDazqMOJ7agOy96"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5S;->A0B(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A08(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15127
    :cond_2
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

    .line 15128
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5g;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
