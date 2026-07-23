.class public final Lcom/facebook/ads/redexgen/X/Vz;
.super Lcom/facebook/ads/redexgen/X/Rm;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VV;,
        Lcom/facebook/ads/redexgen/X/W0;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;

.field public static final A0K:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A02:Lcom/facebook/ads/NativeAd$NativeOptions;

.field public A03:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public A04:Lcom/facebook/ads/redexgen/X/gi;

.field public A05:Lcom/facebook/ads/redexgen/X/VV;

.field public A06:Lcom/facebook/ads/redexgen/X/Vf;

.field public A07:Lcom/facebook/ads/redexgen/X/6r;

.field public A08:Lcom/facebook/ads/redexgen/X/3S;

.field public A09:Lcom/facebook/ads/redexgen/X/3L;

.field public A0A:Lcom/facebook/ads/redexgen/X/fo;

.field public A0B:Lcom/facebook/ads/redexgen/X/fp;

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public final A0F:Lcom/facebook/ads/redexgen/X/ep;

.field public final A0G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0H:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2165
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gicLODNc4Ss02ASp0SH6jYH1jReGCf7D"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ud1g41PfTpgHVgN2zMRJY9l5AGp7t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qgXpVhlOa1wHLevNk8n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YvRZAMwcrsdunGxdPmTtNWzK4vSRpQc4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eiRiwAROr6ki2Hau4nBgoUP0cJGv3yGG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AknM7mKZVSENDtzyALrGWQlwPvra0WAt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RqySj6gASebQYnIOdgQzgXbIWVvFlmni"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rcToBCOkHOudlFUS35924ELLk4KD1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vz;->A0K()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Vz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vz;->A0K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69918
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rm;-><init>()V

    .line 69919
    new-instance v0, Lcom/facebook/ads/redexgen/X/W5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W5;-><init>(Lcom/facebook/ads/redexgen/X/Vz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/ep;

    .line 69920
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69921
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69922
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/Vf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:Lcom/facebook/ads/redexgen/X/Vf;

    .line 69923
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:F

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Vz;F)F
    .locals 0

    .line 69924
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:F

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/NativeAd$NativeOptions;)Lcom/facebook/ads/NativeAd$NativeOptions;
    .locals 0

    .line 69925
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 69926
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/W4;
    .locals 1

    .line 69927
    new-instance v0, Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/W4;-><init>(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/W3;
    .locals 1

    .line 69928
    new-instance v0, Lcom/facebook/ads/redexgen/X/W3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/W3;-><init>(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    .line 69929
    .local v0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/VX;
    return-object v0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/W1;
    .locals 1

    .line 69930
    new-instance v0, Lcom/facebook/ads/redexgen/X/W1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/W1;-><init>(Lcom/facebook/ads/redexgen/X/Vz;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/VV;
    .locals 0

    .line 69931
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A05:Lcom/facebook/ads/redexgen/X/VV;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/6r;
    .locals 0

    .line 69932
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    return-object p0
.end method

.method private A08()Lcom/facebook/ads/redexgen/X/fp;
    .locals 7

    .line 69933
    new-instance v1, Lcom/facebook/ads/redexgen/X/fp;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    return-object v1
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Vz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 69934
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0H:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Vz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 69935
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0G:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0C()V
    .locals 4

    .line 69936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_1

    .line 69937
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "Ntv0Vby76dSesAjQjgB6ptCIElpzOEzL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/eq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0F:Lcom/facebook/ads/redexgen/X/ep;

    .line 69938
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eq;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/ep;)V

    .line 69939
    :cond_1
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 69940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 69941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VQ;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69942
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 2

    .line 69943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 69944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    .line 69945
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VU;-><init>(Lcom/facebook/ads/redexgen/X/Vz;)V

    .line 69946
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69947
    :cond_0
    return-void
.end method

.method private A0F()V
    .locals 2

    .line 69948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 69949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/eq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eq;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/ep;)V

    .line 69950
    :cond_0
    return-void
.end method

.method private A0G()V
    .locals 4

    .line 69951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getHideMediaControls()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABi()V

    .line 69953
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69954
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "KtstU60KqEiOpYkS6KSDXNWKu5PITYtK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABh()V

    .line 69955
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    if-eqz v0, :cond_3

    .line 69956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 69957
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getHideMediaControls()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 69958
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getHideMediaControls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 69959
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VR;-><init>(Lcom/facebook/ads/redexgen/X/Vz;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3L;->post(Ljava/lang/Runnable;)Z

    .line 69961
    :cond_3
    :goto_0
    return-void

    .line 69962
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_3

    .line 69963
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/VS;-><init>(Lcom/facebook/ads/redexgen/X/Vz;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private A0H()V
    .locals 4

    .line 69964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getUnMuteVolume()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABk()V

    .line 69966
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "1A270iucPH7yQTpQVcY6WmFhLzvmB0Is"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "1BN9a3kcQdFnn1rDq6e2xRSvc5Sglw92"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Lt;->ABj()V

    .line 69968
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    if-eqz v0, :cond_4

    .line 69969
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "9BSaV1qwv2wk9zKsNbmqgYOZ4C9vO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "GTOoQ0M5k2g8J0XGcddyc87MnH9r3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 69970
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getUnMuteVolume()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 69971
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getUnMuteVolume()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 69972
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 69973
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 69974
    :cond_4
    :goto_0
    return-void

    .line 69975
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    goto :goto_0
.end method

.method private A0I()V
    .locals 4

    .line 69976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 69978
    :goto_0
    return-void

    .line 69979
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "z79LrkWpr7afRwAllWq14kp6jWBswbkV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v3, v0, :cond_2

    .line 69980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0E:Z

    .line 69981
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    goto :goto_0
.end method

.method private A0J()V
    .locals 1

    .line 69982
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/Vf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:Lcom/facebook/ads/redexgen/X/Vf;

    .line 69983
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0F()V

    .line 69984
    return-void
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vz;->A0I:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x2ct
        0x34t
        0x23t
        0x2et
        0x2bt
        0x26t
        0x62t
        0x30t
        0x27t
        0x2ct
        0x26t
        0x27t
        0x30t
        0x27t
        0x30t
        0x62t
        0x21t
        0x2at
        0x2bt
        0x2et
        0x26t
        0x62t
        0x21t
        0x2dt
        0x2ct
        0x24t
        0x2bt
        0x25t
        0x6ct
        0x7t
        0x2ft
        0x2et
        0x23t
        0x2bt
        0x1ct
        0x23t
        0x2ft
        0x3dt
        0x1ct
        0x23t
        0x2et
        0x2ft
        0x25t
        0x6at
        0x23t
        0x39t
        0x6at
        0x24t
        0x3ft
        0x26t
        0x26t
        0x71t
        0x6at
        0x3ft
        0x24t
        0x2bt
        0x28t
        0x26t
        0x2ft
        0x6at
        0x3et
        0x25t
        0x6at
        0x2ct
        0x23t
        0x24t
        0x2et
        0x6at
        0x23t
        0x3et
        0x64t
        0x7at
        0x41t
        0x4et
        0x4dt
        0x43t
        0x4at
        0xft
        0x5bt
        0x40t
        0xft
        0x49t
        0x46t
        0x41t
        0x4bt
        0xft
        0x62t
        0x4at
        0x4bt
        0x46t
        0x4et
        0x79t
        0x46t
        0x4at
        0x58t
        0x79t
        0x46t
        0x4bt
        0x4at
        0x40t
        0xft
        0x4ct
        0x47t
        0x46t
        0x43t
        0x4bt
        0x1t
    .end array-data
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Vz;)V
    .locals 0

    .line 69985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0G()V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Vz;)V
    .locals 0

    .line 69986
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0H()V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Vz;)V
    .locals 0

    .line 69987
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0J()V

    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/VV;)V
    .locals 0

    .line 69988
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vz;->A0Q(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/VV;)V

    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/redexgen/X/et;)V
    .locals 0

    .line 69989
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vz;->A0R(Lcom/facebook/ads/redexgen/X/et;)V

    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/VV;)V
    .locals 5

    .line 69990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0D:Z

    .line 69991
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0E:Z

    .line 69992
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A05:Lcom/facebook/ads/redexgen/X/VV;

    .line 69993
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0C()V

    .line 69994
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A08:Lcom/facebook/ads/redexgen/X/3S;

    .line 69995
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69996
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69997
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69998
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "TnDtOWvYiNMfLmp09Wf7ctnD5adJ0dsa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 69999
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/W2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/W2;-><init>(Lcom/facebook/ads/redexgen/X/Vz;)V

    .line 70000
    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/3S;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/b8;)V

    .line 70001
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A1D()Lcom/facebook/ads/redexgen/X/Vf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:Lcom/facebook/ads/redexgen/X/Vf;

    .line 70002
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A1K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3L;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 70003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3L;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 70004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 70005
    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/et;)V
    .locals 4

    .line 70006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_1

    .line 70007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    const/16 v0, 0x18

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 70008
    :cond_0
    :goto_0
    return-void

    .line 70009
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70010
    sget-object v3, Lcom/facebook/ads/redexgen/X/Vz;->A0K:Ljava/lang/String;

    const/16 v2, 0x1e

    const/16 v1, 0x2a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private A0S()Z
    .locals 1

    .line 70011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getDisableFullScreen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABg()V

    .line 70013
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABf()V

    .line 70015
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 70016
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getDisableFullScreen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A02:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 70017
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$NativeOptions;->getDisableFullScreen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 70018
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 70019
    :goto_0
    return v0

    .line 70020
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0T()Z
    .locals 3

    .line 70021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    .line 70022
    :cond_0
    return v2

    .line 70023
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:Lcom/facebook/ads/redexgen/X/Vf;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Vf;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A06:Lcom/facebook/ads/redexgen/X/Vf;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/Vf;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static synthetic A0U(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 70024
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/Vz;)Z
    .locals 0

    .line 70025
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0E:Z

    return p0
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/Vz;)Z
    .locals 0

    .line 70026
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0D:Z

    return p0
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/Vz;)Z
    .locals 0

    .line 70027
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0T()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/Vz;Z)Z
    .locals 0

    .line 70028
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0E:Z

    return p1
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/Vz;Z)Z
    .locals 0

    .line 70029
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0D:Z

    return p1
.end method


# virtual methods
.method public final synthetic A0a()V
    .locals 2

    .line 70030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 70031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0g(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 70032
    :cond_0
    return-void
.end method

.method public final synthetic A0b()V
    .locals 2

    .line 70033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_0

    .line 70034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 70035
    :cond_0
    return-void
.end method

.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/MediaViewVideoRenderer;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;I)V
    .locals 7

    .line 70036
    invoke-interface {p3}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rm;

    .line 70037
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Rm;->A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V

    .line 70038
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Vz;->A03:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    .line 70039
    packed-switch p4, :pswitch_data_0

    .line 70040
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70041
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Vz;->A03(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/W4;

    move-result-object v4

    .line 70042
    .local v0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/VX;
    goto :goto_0

    .line 70043
    .end local v0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/VX;
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Vz;->A04(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/W3;

    move-result-object v4

    .line 70044
    .restart local v0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/VX;
    :goto_0
    check-cast p3, Lcom/facebook/ads/redexgen/X/Rz;

    .line 70045
    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/Rz;->A06(Lcom/facebook/ads/redexgen/X/VX;)V

    .line 70046
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 70047
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 70048
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3S;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A08:Lcom/facebook/ads/redexgen/X/3S;

    .line 70049
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A05()Lcom/facebook/ads/redexgen/X/W1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0A:Lcom/facebook/ads/redexgen/X/fo;

    .line 70050
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A08()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    .line 70051
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 70052
    .local v1, "density":F
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 70053
    .local v2, "smallPadding":I
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 70054
    .local v3, "bigPadding":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3L;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3L;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    .line 70055
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70056
    .local v4, "playPauseParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70057
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/facebook/ads/redexgen/X/3L;->setPadding(IIII)V

    .line 70059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3L;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70060
    const/4 v6, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "7BCad5LO6te39ERddnjUHTKJR8zzbght"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-ge v6, v5, :cond_0

    .line 70061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 70062
    .local v6, "child":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/6r;

    if-eqz v0, :cond_4

    .line 70063
    check-cast v1, Lcom/facebook/ads/redexgen/X/6r;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    .line 70064
    .end local v5    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    if-nez v0, :cond_2

    .line 70065
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70066
    sget-object v5, Lcom/facebook/ads/redexgen/X/Vz;->A0K:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70067
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 70068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0B:Lcom/facebook/ads/redexgen/X/fp;

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 70069
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/VX;->AJU()V

    .line 70070
    return-void

    .line 70071
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A08:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 70072
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vz;->A07:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vz;->A09:Lcom/facebook/ads/redexgen/X/3L;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vz;->A0J:[Ljava/lang/String;

    const-string v1, "Z21owOXIiAfqNY46KReygSjUmuqXSFx4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    goto :goto_2

    .line 70073
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 70074
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rm;->onAttachedToWindow()V

    .line 70075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0C:Z

    .line 70076
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0I()V

    .line 70077
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 70078
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rm;->onDetachedFromWindow()V

    .line 70079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A0C:Z

    .line 70080
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0I()V

    .line 70081
    return-void
.end method

.method public final onPrepared()V
    .locals 4

    .line 70082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vz;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 70083
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0s(Landroid/content/Context;)Z

    move-result v3

    .line 70084
    .local v0, "disableVideoFullscreenOnNative":Z
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0S()Z

    move-result v2

    .line 70085
    .local v1, "disableVideoFullScreenNativeOptions":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vz;->A01:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VT;

    invoke-direct {v0, p0, v3, v2}, Lcom/facebook/ads/redexgen/X/VT;-><init>(Lcom/facebook/ads/redexgen/X/Vz;ZZ)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70086
    if-nez v3, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 70087
    .local v2, "disableFullScreenOnClick":Z
    :goto_0
    if-nez v0, :cond_1

    .line 70088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0E()V

    .line 70089
    :goto_1
    return-void

    .line 70090
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0D()V

    goto :goto_1

    .line 70091
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 70092
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rm;->onVisibilityChanged(Landroid/view/View;I)V

    .line 70093
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0I()V

    .line 70094
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 70095
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rm;->onWindowFocusChanged(Z)V

    .line 70096
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vz;->A0I()V

    .line 70097
    return-void
.end method
