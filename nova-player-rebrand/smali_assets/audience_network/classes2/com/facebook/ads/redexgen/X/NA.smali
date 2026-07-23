.class public final Lcom/facebook/ads/redexgen/X/NA;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/k8;

.field public A01:Lcom/facebook/ads/redexgen/X/N9;

.field public A02:Lcom/facebook/ads/redexgen/X/gi;

.field public A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 0

    .line 53008
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53009
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NA;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 53010
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NA;->A03:Ljava/lang/String;

    .line 53011
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NA;->A01:Lcom/facebook/ads/redexgen/X/N9;

    .line 53012
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NA;->A00:Lcom/facebook/ads/redexgen/X/k8;

    .line 53013
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NA;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

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

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NA;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        0x42t
        0x4et
        0x4ct
        0xft
        0x47t
        0x40t
        0x42t
        0x44t
        0x43t
        0x4et
        0x4et
        0x4at
        0xft
        0x40t
        0x45t
        0x52t
        0xft
        0x43t
        0x40t
        0x4ft
        0x4ft
        0x44t
        0x53t
        0xft
        0x42t
        0x4dt
        0x48t
        0x42t
        0x4at
        0x44t
        0x45t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 5

    .line 53014
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 53015
    .local v0, "bannerIntentFilter":Landroid/content/IntentFilter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53016
    .local v1, "actionStringbuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    const/16 v1, 0x1f

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53017
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A03:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53019
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/P2;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 53021
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 53022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/P2;->A05(Landroid/content/BroadcastReceiver;)V

    .line 53023
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 53024
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 53025
    .local v0, "intentAction":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 53026
    return-void

    .line 53027
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 53028
    .local v1, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v3, v1, v0

    .line 53029
    .local v2, "action":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 53030
    return-void

    .line 53031
    :cond_1
    const/4 v2, 0x1

    const/16 v1, 0x1f

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NA;->A01:Lcom/facebook/ads/redexgen/X/N9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A00:Lcom/facebook/ads/redexgen/X/k8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->ADC(Lcom/facebook/ads/redexgen/X/k8;)V

    .line 53033
    :cond_2
    return-void
.end method
