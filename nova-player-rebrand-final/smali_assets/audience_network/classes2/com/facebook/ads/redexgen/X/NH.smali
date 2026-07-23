.class public final Lcom/facebook/ads/redexgen/X/NH;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ju;

.field public A01:Lcom/facebook/ads/redexgen/X/NG;

.field public A02:Lcom/facebook/ads/redexgen/X/gi;

.field public A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1433
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y8Z1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Gib9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "71bezSKIJxKufdL13ppDGQvN3l"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "amgHka60jBO0VGEiDWjvaQpooGEX1vUM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ttT0jofZ4zWB5Dwx3mPNIXc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eyh0I6c0vYFaGMFwnoeMEbyGHh2pIYmK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GRZnv0m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VfIH6aQ48NmkLcOtEQWPZe5uGeHooIii"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NH;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NH;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/NG;)V
    .locals 0

    .line 53097
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53098
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 53099
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Ljava/lang/String;

    .line 53100
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:Lcom/facebook/ads/redexgen/X/NG;

    .line 53101
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NH;->A00:Lcom/facebook/ads/redexgen/X/ju;

    .line 53102
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NH;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

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

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NH;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0xct
        -0x3at
        -0x2et
        -0x30t
        -0x6ft
        -0x37t
        -0x3ct
        -0x3at
        -0x38t
        -0x3bt
        -0x2et
        -0x2et
        -0x32t
        -0x6ft
        -0x3ct
        -0x39t
        -0x2at
        -0x6ft
        -0x2ft
        -0x3ct
        -0x29t
        -0x34t
        -0x27t
        -0x38t
        -0x6ft
        -0x3ct
        -0x39t
        -0x3et
        -0x3at
        -0x31t
        -0x34t
        -0x3at
        -0x32t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 5

    .line 53103
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 53104
    .local v0, "nativeIntentFilter":Landroid/content/IntentFilter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53105
    .local v1, "actionStringbuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    const/16 v1, 0x20

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53106
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/P2;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 53110
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 53111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P2;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/P2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/P2;->A05(Landroid/content/BroadcastReceiver;)V

    .line 53112
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 53113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 53114
    .local v0, "intentAction":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 53115
    return-void

    .line 53116
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53117
    .local v1, "parts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x1

    if-ge v1, v0, :cond_1

    .line 53118
    return-void

    .line 53119
    :cond_1
    const/4 v0, 0x0

    aget-object v4, v2, v0

    .line 53120
    .local v2, "action":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 53121
    return-void

    .line 53122
    :cond_2
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A05:[Ljava/lang/String;

    const-string v1, "UAhxU8HTiJONxaKo3zNJYg3uL8StvHDr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x20

    const/16 v0, 0x23

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/NH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53123
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:Lcom/facebook/ads/redexgen/X/NG;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NH;->A00:Lcom/facebook/ads/redexgen/X/ju;

    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/NH;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/NG;->AEv(Lcom/facebook/ads/redexgen/X/ju;)V

    .line 53124
    :cond_5
    return-void
.end method
