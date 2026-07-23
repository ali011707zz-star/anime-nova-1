.class public final Lcom/facebook/ads/redexgen/X/8R;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8Q;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/8R;

.field public static final A05:Lcom/facebook/ads/redexgen/X/8R;

.field public static final A06:Lcom/facebook/ads/redexgen/X/oX;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Prevent throwing when building the map"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/oX<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 512
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "n0jQ8SeFa80EBLo4BXhwXwPS4Wjubjck"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v64BeMF4Y1fRwWGkqW0btQJWsOcnPY4V"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TgQc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ri1mjPnDGJYW0mGh81XgbTSSpeaxgcJq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RtYQoh190WxakJNXNOvGF0rP0AmdpNRb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fbDVM5YfIDSRqB6n56hfMufsgfpcQx7k"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HNWTUdzo11zzvmCb4ifQA88FoSPuiiKn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CiEa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8R;->A06()V

    const/4 v6, 0x2

    filled-new-array {v6}, [I

    move-result-object v1

    const/16 v5, 0x8

    .line 513
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 514
    new-instance v0, Lcom/facebook/ads/redexgen/X/8R;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/8R;-><init>([II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8R;->A04:Lcom/facebook/ads/redexgen/X/8R;

    .line 515
    const/4 v4, 0x5

    const/4 v0, 0x6

    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 517
    filled-new-array {v6, v4, v0}, [I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8R;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/8R;-><init>([II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8R;->A05:Lcom/facebook/ads/redexgen/X/8R;

    .line 518
    new-instance v1, Lcom/facebook/ads/redexgen/X/oV;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/oV;-><init>()V

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v1

    .line 520
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v1

    .line 521
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v1

    .line 522
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 524
    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v1

    .line 525
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/oV;->A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oV;->A07()Lcom/facebook/ads/redexgen/X/oX;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8R;->A06:Lcom/facebook/ads/redexgen/X/oX;

    .line 527
    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 22915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22916
    if-eqz p1, :cond_0

    .line 22917
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    .line 22918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 22919
    :goto_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    .line 22920
    return-void

    .line 22921
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    goto :goto_0
.end method

.method public static A00(I)I
    .locals 4

    .line 22922
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1c

    if-gt v1, v0, :cond_0

    .line 22923
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2

    .line 22924
    const/16 p0, 0x8

    .line 22925
    :cond_0
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1a

    if-gt v1, v0, :cond_1

    const/16 v2, 0xed

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 22926
    const/4 p0, 0x2

    .line 22927
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A01(I)I

    move-result v0

    return v0

    .line 22928
    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "n1qXVCZQxk2N8nhnGA5Su8h2HHCkXbDi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "3IkXI2X5X2wTbaqU0wEl3DE4dRdq07f0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_3

    const/4 v3, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "tECYq4G9CXONPArggxwQRVOEprBCIxCW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_0

    .line 22929
    :cond_3
    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(II)I
    .locals 3

    .line 22930
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 22931
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/8Q;->A00(II)I

    move-result v0

    return v0

    .line 22932
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A06:Lcom/facebook/ads/redexgen/X/oX;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oX;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "4LwyKZxV9xzADs3TG4HwkSSUmTpMdFHu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "TU5gCkHzG3bOz42CgVjxZ9enmRnhlx9h"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/8R;
    .locals 3

    .line 22933
    const/16 v2, 0x44

    const/16 v1, 0x24

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22934
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 22935
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/8R;->A03(Landroid/content/Context;Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/8R;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Landroid/content/Context;Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/8R;
    .locals 5

    .line 22936
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8R;->A07()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 22937
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v2, 0xce

    const/16 v1, 0x1f

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 22938
    sget-object v0, Lcom/facebook/ads/redexgen/X/8R;->A05:Lcom/facebook/ads/redexgen/X/8R;

    return-object v0

    .line 22939
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    const/16 v4, 0x8

    if-lt v1, v0, :cond_2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A18(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22940
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Q;->A01()[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8R;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/8R;-><init>([II)V

    .line 22941
    return-object v0

    .line 22942
    :cond_2
    if-eqz p1, :cond_3

    const/16 v2, 0x68

    const/16 v1, 0x24

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 22943
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/8R;->A04:Lcom/facebook/ads/redexgen/X/8R;

    return-object v0

    .line 22944
    :cond_4
    const/16 v2, 0x8c

    const/16 v1, 0x1d

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 22945
    const/16 v2, 0xa9

    const/16 v1, 0x25

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8R;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/8R;-><init>([II)V

    .line 22946
    return-object v0
.end method

.method public static synthetic A04()Lcom/facebook/ads/redexgen/X/oX;
    .locals 1

    .line 22947
    sget-object v0, Lcom/facebook/ads/redexgen/X/8R;->A06:Lcom/facebook/ads/redexgen/X/oX;

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8R;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 4

    const/16 v0, 0xf1

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "fFCHGQkYTOkakvUkxnOWQDFO0G2COwX4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "aKWONvT57JCa0OWG4uWHvxhg88ypYICi"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/8R;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x5t
        0x9t
        0x5at
        0x5ct
        0x59t
        0x59t
        0x46t
        0x5bt
        0x5dt
        0x4ct
        0x4dt
        0x6ct
        0x47t
        0x4at
        0x46t
        0x4dt
        0x40t
        0x47t
        0x4et
        0x5at
        0x14t
        0x51t
        0x7dt
        0x71t
        0x6at
        0x7ft
        0x7et
        0x6t
        0x32t
        0x23t
        0x2et
        0x28t
        0x4t
        0x26t
        0x37t
        0x26t
        0x25t
        0x2et
        0x2bt
        0x2et
        0x33t
        0x2et
        0x22t
        0x34t
        0x1ct
        0x2at
        0x26t
        0x3ft
        0x4t
        0x2ft
        0x26t
        0x29t
        0x29t
        0x22t
        0x2bt
        0x4t
        0x28t
        0x32t
        0x29t
        0x33t
        0x7at
        0x7bt
        0x4at
        0x42t
        0x4ct
        0x4et
        0x4at
        0x44t
        0x34t
        0x3bt
        0x31t
        0x27t
        0x3at
        0x3ct
        0x31t
        0x7bt
        0x38t
        0x30t
        0x31t
        0x3ct
        0x34t
        0x7bt
        0x34t
        0x36t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x7bt
        0x1dt
        0x11t
        0x18t
        0x1ct
        0xat
        0x14t
        0x0t
        0x11t
        0x1ct
        0x1at
        0xat
        0x5t
        0x19t
        0x0t
        0x12t
        0x1et
        0x11t
        0x1bt
        0xdt
        0x10t
        0x16t
        0x1bt
        0x51t
        0x12t
        0x1at
        0x1bt
        0x16t
        0x1et
        0x51t
        0x1at
        0x7t
        0xbt
        0xdt
        0x1et
        0x51t
        0x3et
        0x2at
        0x3bt
        0x36t
        0x30t
        0x20t
        0x2ft
        0x33t
        0x2at
        0x38t
        0x20t
        0x2ct
        0x2bt
        0x3et
        0x2bt
        0x3at
        0x72t
        0x7dt
        0x77t
        0x61t
        0x7ct
        0x7at
        0x77t
        0x3dt
        0x7et
        0x76t
        0x77t
        0x7at
        0x72t
        0x3dt
        0x76t
        0x6bt
        0x67t
        0x61t
        0x72t
        0x3dt
        0x56t
        0x5dt
        0x50t
        0x5ct
        0x57t
        0x5at
        0x5dt
        0x54t
        0x40t
        0x11t
        0x1et
        0x14t
        0x2t
        0x1ft
        0x19t
        0x14t
        0x5et
        0x1dt
        0x15t
        0x14t
        0x19t
        0x11t
        0x5et
        0x15t
        0x8t
        0x4t
        0x2t
        0x11t
        0x5et
        0x3dt
        0x31t
        0x28t
        0x2ft
        0x33t
        0x38t
        0x31t
        0x3et
        0x3et
        0x35t
        0x3ct
        0x2ft
        0x33t
        0x3ft
        0x25t
        0x3et
        0x24t
        0x7bt
        0x66t
        0x6at
        0x7bt
        0x6ct
        0x70t
        0x7ft
        0x72t
        0x41t
        0x6dt
        0x6bt
        0x6ct
        0x6ct
        0x71t
        0x6bt
        0x70t
        0x7at
        0x41t
        0x6dt
        0x71t
        0x6bt
        0x70t
        0x7at
        0x41t
        0x7bt
        0x70t
        0x7ft
        0x7ct
        0x72t
        0x7bt
        0x7at
        0x75t
        0x66t
        0x74t
        0x66t
    .end array-data
.end method

.method public static A07()Z
    .locals 4

    .line 22948
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    .line 22949
    const/16 v2, 0x15

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x3d

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 22950
    :goto_0
    return v0

    .line 22951
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 22952
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    return v0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22953
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A03(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 22954
    .local v0, "encoding":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/8R;->A06:Lcom/facebook/ads/redexgen/X/oX;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oX;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 22955
    return-object v7

    .line 22956
    :cond_0
    const/16 v6, 0x12

    if-ne v4, v6, :cond_2

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/8R;->A0A(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22957
    const/4 v4, 0x6

    .line 22958
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/8R;->A0A(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 22959
    return-object v7

    .line 22960
    :cond_2
    const/16 v0, 0x8

    if-ne v4, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8R;->A0A(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22961
    const/4 v4, 0x7

    goto :goto_0

    .line 22962
    :cond_3
    iget v5, p1, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "4KpokJkqLEvhjIg40C82zBlUQNBiJ4Nh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "qYsciqDft0GPV223mm2sV4x00h8r6ql4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_5

    if-ne v4, v6, :cond_9

    .line 22963
    .end local v1
    :cond_5
    iget v5, p1, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "PeibxLIDNQepcsKrVJzxdcnxdYsUjYYR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_8

    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    .line 22964
    .local v1, "sampleRate":I
    :goto_2
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/8R;->A01(II)I

    move-result v1

    .line 22965
    .local v1, "channelCount":I
    :cond_6
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/8R;->A00(I)I

    move-result v0

    .line 22966
    .local v3, "channelConfig":I
    if-nez v0, :cond_a

    .line 22967
    return-object v7

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/8R;->A03:[Ljava/lang/String;

    const-string v1, "BgZH8BuYmZ4E43z5yTU6VaJsu5Ivkzql"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "qg4irZvxQMOGKPEC5vFhWWygbOBgLyYA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_8

    goto :goto_1

    .line 22968
    :cond_8
    const v0, 0xbb80

    goto :goto_2

    .line 22969
    :cond_9
    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    .line 22970
    .local v1, "channelCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    if-le v1, v0, :cond_6

    .line 22971
    return-object v7

    .line 22972
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(I)Z
    .locals 1

    .line 22973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 1

    .line 22974
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/8R;->A09(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 22975
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 22976
    return v2

    .line 22977
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/8R;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 22978
    return v0

    .line 22979
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/8R;

    .line 22980
    .local v1, "audioCapabilities":Lcom/facebook/ads/redexgen/X/8R;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    if-ne v1, v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 22981
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 22982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1b

    const/16 v1, 0x22

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8R;->A01:[I

    .line 22983
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x43

    const/4 v1, 0x1

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8R;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22984
    return-object v0
.end method
