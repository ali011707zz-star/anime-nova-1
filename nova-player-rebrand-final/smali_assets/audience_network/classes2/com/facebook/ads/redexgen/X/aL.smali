.class public abstract Lcom/facebook/ads/redexgen/X/aL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2596
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JDSePW2HSG4YeS6gtlV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "82T2GFaLeV3aTbLMJos0KxEKOb8V"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eQCDfbwHDs1I63LCwtRfVvk7aOq68Yi1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mKAtiPzaErPw2g5AsekgNJUywNJKgzbn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W6CrCk7jl5WmpSSnHELA9a4ylCy3ZwGN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yC8I8b2mmbmFe3RpkHIpYdmwx30s8PcH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "t7vLS6XVWI7z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7V80TKFhnzYK6cwmq9Eavbn4uXT7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aL;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;
    .locals 3

    .line 76402
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76403
    sget-object p0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/aP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aL;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aL;->A00:[Ljava/lang/String;

    const-string v1, "myUXVCGo2IYKrTscb4wiG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object p0

    .line 76404
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/aP;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 2

    .line 76405
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AAz(Ljava/lang/String;)V

    .line 76406
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 2

    .line 76407
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB9(Ljava/lang/String;)V

    .line 76408
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 2

    .line 76409
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AC7(Ljava/lang/String;)V

    .line 76410
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 0

    .line 76411
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/aL;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 76412
    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 0

    .line 76413
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/aL;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 76414
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 0

    .line 76415
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/aL;->A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 76416
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/aM;)V
    .locals 5

    .line 76417
    if-eqz p0, :cond_0

    .line 76418
    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0A:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 76419
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76420
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 76421
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB8(Ljava/lang/String;)V

    .line 76422
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76423
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 76424
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AAy(Ljava/lang/String;)V

    .line 76425
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object p0

    .line 76426
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v4

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/aL;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/aL;->A00:[Ljava/lang/String;

    const-string v1, "Fh7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Og;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76427
    if-eqz p2, :cond_4

    .line 76428
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    .line 76429
    invoke-interface {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 76430
    :cond_4
    :goto_0
    return-void

    .line 76431
    :cond_5
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 76432
    new-instance v2, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    .line 76433
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v0

    .line 76434
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76435
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 76436
    invoke-static {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_0
.end method
