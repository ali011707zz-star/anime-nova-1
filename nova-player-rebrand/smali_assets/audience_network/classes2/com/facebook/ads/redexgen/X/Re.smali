.class public final Lcom/facebook/ads/redexgen/X/Re;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Landroid/content/Intent;

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/WK;

.field public A08:Lcom/facebook/ads/redexgen/X/Yi;

.field public A09:Lcom/facebook/ads/redexgen/X/Zd;

.field public A0A:Lcom/facebook/ads/redexgen/X/eF;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Z

.field public final A0E:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Ro;

.field public final A0H:Lcom/facebook/ads/redexgen/X/S1;

.field public final A0I:Lcom/facebook/ads/redexgen/X/SK;

.field public final A0J:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Rk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1624
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4LY4lS0Dtnhb2OiQyA5efrKIFR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dGupKpVCMt4qg9mKwPVhImHWchSaWcIC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZyPDBV2Dgn506ClNEjHAvEDIkGgGqxcu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6d7pmCocDfQ9ggh3dWvmWW2CO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v0AhzTtfFBaqfNNgAD9Hm9U40nGOHxVb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UIU6rcdX7ZqD4Xq5NwRFZisMuquIGFkO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tB8Uz7UMZA3JApFIn70Qu6pSbr2GCqXd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GRU7Zt0cjyIBsRz9MT2AF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Re;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)V
    .locals 3

    .line 62528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0K:Ljava/util/List;

    .line 62530
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A01:I

    .line 62531
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 62532
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 62533
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A02(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 62535
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/redexgen/X/S1;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/S1;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0H:Lcom/facebook/ads/redexgen/X/S1;

    .line 62536
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/SK;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    .line 62537
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ro;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ro;-><init>(Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    .line 62538
    return-void
.end method

.method private A00()Ljava/lang/String;
    .locals 3

    .line 62539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WK;->A03()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62540
    :cond_0
    const/16 v2, 0x8a

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62541
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WK;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xeb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Re;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x38t
        0x37t
        0x34t
        0x3at
        0x33t
        0x76t
        0x22t
        0x39t
        0x76t
        0x3ft
        0x38t
        0x30t
        0x33t
        0x24t
        0x76t
        0x20t
        0x3ft
        0x33t
        0x21t
        0x2t
        0x2ft
        0x26t
        0x33t
        0x76t
        0x30t
        0x24t
        0x39t
        0x3bt
        0x76t
        0x3ft
        0x38t
        0x22t
        0x33t
        0x38t
        0x22t
        0x76t
        0x39t
        0x24t
        0x76t
        0x25t
        0x37t
        0x20t
        0x33t
        0x32t
        0x1ft
        0x38t
        0x25t
        0x22t
        0x37t
        0x38t
        0x35t
        0x33t
        0x5t
        0x22t
        0x37t
        0x22t
        0x33t
        0x2at
        0x25t
        0x14t
        0x2at
        0x28t
        0x3ft
        0x22t
        0x3dt
        0x22t
        0x3ft
        0x32t
        0x7at
        0x78t
        0x75t
        0x75t
        0x7ct
        0x6bt
        0x4dt
        0x60t
        0x69t
        0x7ct
        0x79t
        0x76t
        0x73t
        0x7ft
        0x74t
        0x6et
        0x4et
        0x75t
        0x71t
        0x7ft
        0x74t
        0x74t
        0x78t
        0x7at
        0x39t
        0x71t
        0x76t
        0x74t
        0x72t
        0x75t
        0x78t
        0x78t
        0x7ct
        0x39t
        0x76t
        0x73t
        0x64t
        0x39t
        0x7et
        0x79t
        0x63t
        0x72t
        0x65t
        0x64t
        0x63t
        0x7et
        0x63t
        0x7et
        0x76t
        0x7bt
        0x39t
        0x73t
        0x7et
        0x64t
        0x67t
        0x7bt
        0x76t
        0x6et
        0x72t
        0x73t
        0x6et
        0x63t
        0x6ct
        0x66t
        0x71t
        0x61t
        0x63t
        0x72t
        0x67t
        0x3et
        0x25t
        0x3ct
        0x3ct
        0x31t
        0x28t
        0x3bt
        0x2ct
        0x2ct
        0x37t
        0x3at
        0x3bt
        0x1at
        0x2bt
        0x33t
        0x2et
        0x2dt
        0x27t
        0x2dt
        0x2et
        0x31t
        0x2ct
        0x2at
        0x2ct
        0x3ft
        0x37t
        0x2at
        0x7t
        0x5t
        0x12t
        0x13t
        0x12t
        0x11t
        0x1et
        0x19t
        0x12t
        0x13t
        0x38t
        0x5t
        0x1et
        0x12t
        0x19t
        0x3t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x3ct
        0x12t
        0xet
        0x4ft
        0x57t
        0x55t
        0x4ct
        0x7dt
        0x5at
        0x48t
        0x59t
        0x4et
        0x6ft
        0x59t
        0x5ft
        0x53t
        0x52t
        0x58t
        0x4ft
        0x7at
        0x61t
        0x51t
        0x61t
        0x7ct
        0x67t
        0x6bt
        0x60t
        0x7at
        0x6ft
        0x7at
        0x67t
        0x61t
        0x60t
        0x70t
        0x6bt
        0x6ct
        0x74t
        0x70t
        0x60t
        0x4ct
        0x61t
        0xet
        0x11t
        0x1dt
        0xft
        0x2ct
        0x1t
        0x8t
        0x1dt
    .end array-data
.end method

.method private A03(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .line 62542
    const/16 v2, 0xe3

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xdb

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    const/16 v2, 0xa5

    const/16 v1, 0x18

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 62543
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    .line 62544
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 62545
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A03(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 62546
    .local v4, "adnwSavedStateBundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A01:I

    .line 62547
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    .line 62548
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    .line 62549
    return-void

    .line 62550
    .end local v4    # "adnwSavedStateBundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A01:I

    .line 62551
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    .line 62552
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    .line 62553
    const/16 v2, 0xbd

    const/16 v1, 0x10

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A02:I

    .line 62554
    return-void
.end method


# virtual methods
.method public final A04()Landroid/widget/RelativeLayout;
    .locals 1

    .line 62555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/AudienceNetworkActivity;
    .locals 1

    .line 62556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 62557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/eF;
    .locals 1

    .line 62558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0A:Lcom/facebook/ads/redexgen/X/eF;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 62559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()V
    .locals 3

    .line 62560
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A05(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V

    .line 62561
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 1

    .line 62562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62563
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 1

    .line 62564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62565
    return-void
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 2

    .line 62566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 62567
    return-void
.end method

.method public final A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 7

    .line 62568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-nez v0, :cond_0

    .line 62569
    return-void

    .line 62570
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "nOOhjPgmgj4ymGbfbhDfGuv2YA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 62571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/hS;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 62573
    move-object v4, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ze;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Yi;Lcom/facebook/ads/redexgen/X/Yh;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    .line 62574
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62575
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62576
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 62577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 62578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0N()V

    .line 62579
    return-void
.end method

.method public final A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 2

    .line 62580
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;Ljava/lang/String;)V

    .line 62581
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 62582
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X2;->A00()Lcom/facebook/ads/redexgen/X/X1;

    const/4 v0, 0x0

    .line 62583
    .local v0, "customDumpsysWriter":Lcom/facebook/ads/redexgen/X/X1;
    if-eqz v0, :cond_0

    .line 62584
    const/16 v2, 0x8e

    const/16 v1, 0xf

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62585
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 62586
    return-void
.end method

.method public final finish(I)V
    .locals 4

    .line 62587
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 62588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ge;

    if-eqz v0, :cond_1

    .line 62589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ge;

    .line 62590
    .local v0, "chainedAdViewController":Lcom/facebook/ads/redexgen/X/Ge;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ge;->A0e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    if-eqz v0, :cond_0

    .line 62592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 62593
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ge;->A0d()V

    .line 62594
    return-void

    .line 62595
    .end local v0    # "chainedAdViewController":Lcom/facebook/ads/redexgen/X/Ge;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62596
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62597
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3D(Ljava/lang/String;ILjava/lang/String;)V

    .line 62598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62599
    return-void

    .line 62600
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A07(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V

    .line 62601
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A06(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V

    .line 62602
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "aKr9nEsLo3sy9RHNghfDRuWnztPSExey"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uIkYfs9grt0Hx69LL2s0ShAsw1OMdxMD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    .line 62603
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 62604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Yi;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62605
    return-void

    .line 62606
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/M3;->A07(IILandroid/content/Intent;)V

    .line 62607
    return-void
.end method

.method public final onBackPressed()V
    .locals 8

    .line 62608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 62609
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Re;->A03:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A04:J

    sub-long v0, v6, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Re;->A03:J

    .line 62610
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/Re;->A04:J

    .line 62611
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A03:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A02:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 62612
    const/4 v2, 0x0

    .line 62613
    .local v2, "shouldIntercept":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rk;

    .line 62614
    .local v4, "interceptor":Lcom/facebook/ads/redexgen/X/Rk;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Rk;->AAI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62615
    const/4 v2, 0x1

    goto :goto_0

    .line 62616
    :cond_1
    if-nez v2, :cond_2

    .line 62617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    .line 62618
    .end local v2    # "shouldIntercept":Z
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 62619
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_0

    .line 62620
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 62621
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/16 v2, 0xcd

    const/16 v1, 0xe

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v3

    if-ne v6, v5, :cond_2

    .line 62622
    const/16 v2, 0x9d

    const/16 v1, 0x8

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62623
    :goto_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/VH;->A0K:Lcom/facebook/ads/redexgen/X/VH;

    .line 62624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62625
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    .line 62626
    invoke-static {v3, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A02(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 62627
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:I

    .line 62628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0H:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S1;->A01()V

    .line 62629
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 62630
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yi;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 62631
    :cond_2
    const/16 v2, 0x81

    const/16 v1, 0x9

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 62632
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YD;->A02()V

    .line 62633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SK;->A04()V

    .line 62634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 62635
    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 62636
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A02(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    .line 62637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A04(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    .line 62638
    .local v0, "startAdContext":Lcom/facebook/ads/redexgen/X/gi;
    if-eqz v1, :cond_0

    .line 62639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/gi;->A0M(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 62640
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Re;->A03(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 62641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62643
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3E(Ljava/lang/String;Ljava/lang/String;)V

    .line 62644
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    const/16 v2, 0x45

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62645
    .local v1, "callerType":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 62646
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 62647
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 62648
    .local v3, "isFirstCallToANActivity":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/SK;->A08(Lcom/facebook/ads/redexgen/X/WK;Z)V

    .line 62649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    .line 62650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 62651
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62652
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62653
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Rj;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;-><init>(Lcom/facebook/ads/redexgen/X/Re;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/gi;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    .line 62654
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0M(Lcom/facebook/ads/redexgen/X/WK;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    .line 62655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-nez v0, :cond_3

    .line 62656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62657
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0A:I

    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 62658
    const/16 v2, 0x3a

    const/16 v1, 0xb

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 62659
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A09()V

    .line 62660
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 62661
    return-void

    .line 62662
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 62663
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    invoke-interface {v1, v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Yi;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V

    .line 62664
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    const/16 v2, 0x5a

    const/16 v1, 0x27

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 62665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A04:J

    .line 62666
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    .line 62667
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A03(Landroid/content/Intent;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0A:Lcom/facebook/ads/redexgen/X/eF;

    .line 62668
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A07(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/WK;Landroid/widget/RelativeLayout;)V

    .line 62669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:I

    .line 62670
    const/16 v2, 0x4f

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 62671
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0C:Ljava/lang/String;

    .line 62672
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SK;->A06()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62673
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A05:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "dMohbzPZPFL3lBhphwrH1b8arfl2r2Ch"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A0C:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "3wH6tZS0sHFmmn7H8QunQNd9ha"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A0C:Ljava/lang/String;

    goto :goto_1

    .line 62674
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "aldkJ30NOVt6q0NKQGcnTd28ZfXNLwwL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 62675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62676
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62677
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3F(Ljava/lang/String;Ljava/lang/String;)V

    .line 62678
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0G:Lcom/facebook/ads/redexgen/X/Ro;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;->A04(Lcom/facebook/ads/redexgen/X/WK;Ljava/lang/String;)V

    .line 62679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 62680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 62681
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_1

    .line 62682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yi;->onDestroy()V

    .line 62683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    .line 62684
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0I:Lcom/facebook/ads/redexgen/X/SK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SK;->A05()V

    .line 62685
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "yBcEH8sYDqTUUkxjXqOG2DCn3q2DEyX3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 62686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A09:Lcom/facebook/ads/redexgen/X/Zd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zd;->A0M()V

    .line 62687
    :cond_3
    return-void
.end method

.method public final onPause()V
    .locals 6

    .line 62688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62689
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62690
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3G(Ljava/lang/String;Ljava/lang/String;)V

    .line 62691
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Re;->A03:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A04:J

    sub-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Re;->A03:J

    .line 62692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_0

    .line 62693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yi;->AFA(Z)V

    .line 62694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62695
    sget-object v3, Lcom/facebook/ads/redexgen/X/VH;->A0E:Lcom/facebook/ads/redexgen/X/VH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    .line 62696
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yi;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62697
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    .line 62698
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;->A02(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 62699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0D:Z

    .line 62700
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 62701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62702
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62703
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3H(Ljava/lang/String;Ljava/lang/String;)V

    .line 62704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A04:J

    .line 62705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_1

    .line 62706
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A0M:[Ljava/lang/String;

    const-string v1, "WHwDulcP2dZca7YA0PmotSPySBaz7ZXD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Yi;->AFi(Z)V

    .line 62707
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0D:Z

    if-eqz v0, :cond_1

    .line 62708
    sget-object v3, Lcom/facebook/ads/redexgen/X/VH;->A0F:Lcom/facebook/ads/redexgen/X/VH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    .line 62709
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yi;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62710
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    .line 62711
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;->A02(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 62712
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 62713
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 62714
    .local v0, "adnwSavedState":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_0

    .line 62715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A08:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Yi;->AIv(Landroid/os/Bundle;)V

    .line 62716
    :cond_0
    const/16 v2, 0xa5

    const/16 v1, 0x18

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A01:I

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62717
    const/16 v2, 0xdb

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62718
    const/16 v2, 0x4f

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0C:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62719
    const/16 v2, 0xe3

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A07:Lcom/facebook/ads/redexgen/X/WK;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62720
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A0A(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 62721
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 62722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62723
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62724
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3I(Ljava/lang/String;Ljava/lang/String;)V

    .line 62725
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 62726
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Re;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YX;->A02(Landroid/app/Activity;ILcom/facebook/ads/redexgen/X/gi;)V

    .line 62727
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 62728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 62729
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 62730
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Re;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3J(Ljava/lang/String;Ljava/lang/String;)V

    .line 62731
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 62732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 1

    .line 62733
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Re;->A09()V

    .line 62734
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 62735
    return-void
.end method
