.class public final Lcom/facebook/ads/redexgen/X/7X;
.super Lcom/facebook/ads/redexgen/X/ik;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/iZ;

.field public final A01:Lcom/facebook/ads/redexgen/X/iI;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 474
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eAQfPHHoyWilLfBxOFaJj1G06pGOxPq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "94FVrmFRVghPmyms9ar5cFWRdDurlkVe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0NqQX4CUu3LD8PHaDMvmRAbh4clEtoM7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DpSRaNejvtQ52XA7I6oeLqqk6ldlwRKU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AVeirdKHq7BiC91JmOFjEM59wAwHTkmS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1THCMBeh6DIPctxeAaB65wntvUu4aFha"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yEsJBiLTEnojRHdtAiiv5fZXbmAhiMSc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YuG6RWvr5fcVmyx3SnaQUPOafyGz2fG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7X;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iI;Ljava/lang/String;)V
    .locals 2

    .line 21178
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 21179
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7X;->A00(Lcom/facebook/ads/redexgen/X/iI;)Lcom/facebook/ads/redexgen/X/iH;

    move-result-object v0

    .line 21180
    invoke-direct {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/ik;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OR;)V

    .line 21181
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    .line 21182
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/iI;)Lcom/facebook/ads/redexgen/X/iH;
    .locals 1

    .line 21183
    new-instance v0, Lcom/facebook/ads/redexgen/X/iH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/iH;-><init>(Lcom/facebook/ads/redexgen/X/iI;)V

    return-object v0
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 21184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_0

    .line 21185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OQ;->A5v()V

    .line 21186
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v0, :cond_1

    .line 21187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iZ;->destroy()V

    .line 21188
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A03:Lcom/facebook/ads/redexgen/X/OD;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->AJM(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 21189
    return-void
.end method

.method public final A09()V
    .locals 4

    .line 21190
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/iZ;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/iZ;-><init>(Lcom/facebook/ads/redexgen/X/iI;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 21191
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/iI;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/iI;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/iI;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 21192
    return-void
.end method

.method public final A0D(Z)V
    .locals 1

    .line 21193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/OQ;->AJn(Z)V

    .line 21194
    return-void
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/iI;
    .locals 1

    .line 21195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/Ad;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 1

    .line 21196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21197
    return-void

    .line 21198
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iI;->A02(Lcom/facebook/ads/Ad;)V

    .line 21199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v0, :cond_1

    .line 21200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/iZ;->A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 21201
    return-void

    .line 21202
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/iI;->A05:Ljava/lang/String;

    .line 21203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/iI;->A02:Lcom/facebook/ads/AdExperienceType;

    .line 21204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iput-boolean p4, v0, Lcom/facebook/ads/redexgen/X/iI;->A08:Z

    .line 21205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 21206
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A0B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21207
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Us;->A0M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21208
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A05()V

    .line 21209
    :goto_0
    return-void

    .line 21210
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7X;->A09()V

    goto :goto_0

    .line 21211
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7X;->A09()V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/RewardData;)V
    .locals 3

    .line 21212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/iI;->A03:Lcom/facebook/ads/RewardData;

    .line 21213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_0

    .line 21214
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21215
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/OY;->A00(Landroid/os/Bundle;Lcom/facebook/ads/RewardData;)Landroid/os/Bundle;

    move-result-object v1

    .line 21216
    const/16 v0, 0x7d3

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OL;->A0F(ILandroid/os/Bundle;)Z

    .line 21217
    return-void

    .line 21218
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v0, :cond_1

    .line 21219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iZ;->A0I(Lcom/facebook/ads/RewardData;)V

    .line 21220
    :cond_1
    return-void
.end method

.method public final A0H()Z
    .locals 5

    .line 21221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v0, :cond_0

    .line 21222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0K()Z

    move-result v0

    return v0

    .line 21223
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/iI;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 21224
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y1;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/iI;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 21225
    :goto_0
    return v0

    .line 21226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 2

    .line 21227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    if-eqz v0, :cond_0

    .line 21228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iZ;->A0L()Z

    move-result v0

    return v0

    .line 21229
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6p()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J(Lcom/facebook/ads/Ad;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 8

    .line 21230
    move-object v0, p2

    check-cast v0, Lcom/facebook/ads/redexgen/X/SJ;

    .line 21231
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A00()I

    move-result v5

    .line 21232
    .local v0, "appOrientation":I
    check-cast p2, Lcom/facebook/ads/redexgen/X/SJ;

    .line 21233
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/SJ;->A01()J

    move-result-wide v2

    .line 21234
    .local v1, "previousAdViewTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A00:Lcom/facebook/ads/redexgen/X/OE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OE;->A6V()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 21235
    return v7

    .line 21236
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iI;->A02(Lcom/facebook/ads/Ad;)V

    sget-object v4, Lcom/facebook/ads/redexgen/X/7X;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21237
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/7X;->A02:[Ljava/lang/String;

    const-string v1, "m9KaRECdYgffkM0tCirP5ynC5R03VfN7"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "WVyWW47u948M29zNqYDy5rdzHxlGG88k"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ik;->A01:Lcom/facebook/ads/redexgen/X/OL;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/OL;->A01:Z

    if-eqz v0, :cond_3

    .line 21238
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ik;->A0A(I)V

    .line 21239
    const/4 v0, 0x1

    return v0

    .line 21240
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    sget-object v4, Lcom/facebook/ads/redexgen/X/7X;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/7X;->A02:[Ljava/lang/String;

    const-string v1, "SVQKcBS7FHKRAHC3EplGepZBNeGcwFJ"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "IfCkczTPSOxE6DmqSLPQVuiWAstWVdL"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v6, :cond_4

    .line 21241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/iZ;->A0M(IJ)Z

    move-result v0

    return v0

    .line 21242
    :cond_4
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7X;->A01:Lcom/facebook/ads/redexgen/X/iI;

    .line 21243
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ik;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/iZ;

    invoke-direct {v0, v4, p0, v1}, Lcom/facebook/ads/redexgen/X/iZ;-><init>(Lcom/facebook/ads/redexgen/X/iI;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    .line 21244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7X;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    invoke-virtual {v0, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/iZ;->A0M(IJ)Z

    .line 21245
    return v7
.end method
