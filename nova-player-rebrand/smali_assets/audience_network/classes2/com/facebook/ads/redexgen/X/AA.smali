.class public final Lcom/facebook/ads/redexgen/X/AA;
.super Lcom/facebook/ads/redexgen/X/qP;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/os;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/om;,
        Lcom/facebook/ads/redexgen/X/ol;
    }
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Landroid/view/Surface;

.field public A04:Landroid/view/SurfaceHolder;

.field public A05:Landroid/view/TextureView;

.field public A06:Lcom/facebook/ads/redexgen/X/qQ;

.field public A07:Lcom/facebook/ads/redexgen/X/qI;

.field public A08:Lcom/facebook/ads/redexgen/X/qI;

.field public A09:Lcom/facebook/ads/redexgen/X/6I;

.field public A0A:Lcom/facebook/ads/redexgen/X/6I;

.field public A0B:Lcom/facebook/ads/redexgen/X/Cx;

.field public A0C:Z

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/AC;

.field public final A0F:Lcom/facebook/ads/redexgen/X/om;

.field public final A0G:Lcom/facebook/ads/redexgen/X/oj;

.field public final A0H:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/8p;",
            ">;"
        }
    .end annotation
.end field

.field public final A0I:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/3U;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Bf;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/GQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/ol;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:[Lcom/facebook/ads/redexgen/X/oo;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 606
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ryR4HSm2zR8tip5OkgYwdb0JWy9e3v2W"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fm5MoQAoRuRRmRXPK4I4CJ8bYaju2JW1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "syIAGKVT8Ewa7Rni6nktnCNdH4Ja85Gc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ScHbfbbxkU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HZJXjhizoNO31MnMnm7FxQnRU8I8lePN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YCsl9os6nHqs6yB8LR1hlQvfR5oCt3rk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ml6mHBX1GsWDWNWH2EtCrt2HpilhtHKz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "59SI8zfcXXU2xe69nRlPKARsr0343GFe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AA;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AA;->A0E()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7t;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/kO;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/7t;",
            "Lcom/facebook/ads/redexgen/X/Ew;",
            "Lcom/facebook/ads/redexgen/X/74;",
            "Lcom/facebook/ads/redexgen/X/F6;",
            "Lcom/facebook/ads/redexgen/X/A6;",
            "Lcom/facebook/ads/redexgen/X/kO<",
            "Lcom/facebook/ads/redexgen/X/45;",
            "Lcom/facebook/ads/redexgen/X/oj;",
            ">;)V"
        }
    .end annotation

    .line 27116
    .local p7, "analyticsCollectorFunction":Lcom/facebook/ads/redexgen/X/kO;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/common/util/Clock;Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    sget-object v8, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/45;

    move-object v0, p0

    move-object/from16 v7, p7

    move-object v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7t;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/kO;Lcom/facebook/ads/redexgen/X/45;)V

    .line 27117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7t;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/kO;Lcom/facebook/ads/redexgen/X/45;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/7t;",
            "Lcom/facebook/ads/redexgen/X/Ew;",
            "Lcom/facebook/ads/redexgen/X/74;",
            "Lcom/facebook/ads/redexgen/X/F6;",
            "Lcom/facebook/ads/redexgen/X/A6;",
            "Lcom/facebook/ads/redexgen/X/kO<",
            "Lcom/facebook/ads/redexgen/X/45;",
            "Lcom/facebook/ads/redexgen/X/oj;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/45;",
            ")V"
        }
    .end annotation

    .line 27118
    .local p11, "analyticsCollectorFunction":Lcom/facebook/ads/redexgen/X/kO;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/common/util/Clock;Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    move-object v2, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qP;-><init>()V

    .line 27119
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/om;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/om;-><init>(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/7v;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    .line 27120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27123
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0H:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27124
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 27125
    .local v7, "eventLooper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0D:Landroid/os/Handler;

    .line 27126
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/AA;->A0D:Landroid/os/Handler;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    .line 27127
    move-object/from16 v10, p6

    move-object v4, p2

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/7t;->A5Y(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/GQ;Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/A6;)[Lcom/facebook/ads/redexgen/X/oo;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0M:[Lcom/facebook/ads/redexgen/X/oo;

    .line 27128
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A00:F

    .line 27129
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A01:I

    .line 27130
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A07:Lcom/facebook/ads/redexgen/X/qQ;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A06:Lcom/facebook/ads/redexgen/X/qQ;

    .line 27131
    const/4 v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A02:I

    .line 27132
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/AA;->A0M:[Lcom/facebook/ads/redexgen/X/oo;

    move-object v4, p0

    move-object/from16 v9, p8

    move-object/from16 v8, p5

    move-object v7, p4

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/AA;->A06([Lcom/facebook/ads/redexgen/X/oo;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/45;)Lcom/facebook/ads/redexgen/X/AC;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    .line 27133
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/kO;->A4B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/oj;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    .line 27134
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/oj;->AJf(Lcom/facebook/ads/redexgen/X/3b;Landroid/os/Looper;)V

    .line 27135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/AA;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27136
    return-void

    .line 27137
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7t;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/A6;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27138
    new-instance v7, Lcom/facebook/ads/redexgen/X/or;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/or;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7t;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/kO;)V

    .line 27139
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AA;I)I
    .locals 0

    .line 27140
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A01:I

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/AA;)Landroid/view/Surface;
    .locals 0

    .line 27141
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 0

    .line 27142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/qI;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/qI;
    .locals 0

    .line 27143
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A07:Lcom/facebook/ads/redexgen/X/qI;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/6I;)Lcom/facebook/ads/redexgen/X/6I;
    .locals 0

    .line 27144
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0A:Lcom/facebook/ads/redexgen/X/6I;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/AA;Lcom/facebook/ads/redexgen/X/6I;)Lcom/facebook/ads/redexgen/X/6I;
    .locals 0

    .line 27145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A09:Lcom/facebook/ads/redexgen/X/6I;

    return-object p1
.end method

.method private final A06([Lcom/facebook/ads/redexgen/X/oo;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/45;)Lcom/facebook/ads/redexgen/X/AC;
    .locals 6

    .line 27146
    new-instance v0, Lcom/facebook/ads/redexgen/X/AC;

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AC;-><init>([Lcom/facebook/ads/redexgen/X/oo;Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/74;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/45;)V

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AA;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27147
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27148
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27149
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27150
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/AA;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 27151
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0H:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A0D()V
    .locals 5

    .line 27152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A05:Landroid/view/TextureView;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 27153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A05:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    if-eq v1, v0, :cond_2

    .line 27154
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A07(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xf

    const/16 v1, 0x31

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27155
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A05:Landroid/view/TextureView;

    .line 27156
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 27157
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0F:Lcom/facebook/ads/redexgen/X/om;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/AA;->A0O:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 27158
    sget-object v2, Lcom/facebook/ads/redexgen/X/AA;->A0O:[Ljava/lang/String;

    const-string v1, "1mt3T64XRkFMJTK0AHNCLCnfNjMbTppi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rnp4JtgfYQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A04:Landroid/view/SurfaceHolder;

    .line 27159
    :cond_1
    return-void

    .line 27160
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A05:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AA;->A0N:[B

    return-void

    :array_0
    .array-data 1
        -0x29t
        -0x13t
        -0xft
        -0xct
        -0x10t
        -0x17t
        -0x37t
        -0x4t
        -0xdt
        -0x2ct
        -0x10t
        -0x1bt
        -0x3t
        -0x17t
        -0xat
        0xct
        0x2et
        0x2bt
        0x1ft
        0x1at
        0x1ct
        0x1et
        0xdt
        0x1et
        0x31t
        0x2dt
        0x2et
        0x2bt
        0x1et
        0x5t
        0x22t
        0x2ct
        0x2dt
        0x1et
        0x27t
        0x1et
        0x2bt
        -0x27t
        0x1at
        0x25t
        0x2bt
        0x1et
        0x1at
        0x1dt
        0x32t
        -0x27t
        0x2et
        0x27t
        0x2ct
        0x1et
        0x2dt
        -0x27t
        0x28t
        0x2bt
        -0x27t
        0x2bt
        0x1et
        0x29t
        0x25t
        0x1at
        0x1ct
        0x1et
        0x1dt
        -0x19t
    .end array-data
.end method

.method private A0F(Landroid/view/Surface;Z)V
    .locals 7

    .line 27161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27162
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/PlayerMessage;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/AA;->A0M:[Lcom/facebook/ads/redexgen/X/oo;

    array-length v5, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v6, v3

    .line 27163
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/oo;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/oo;->A9N()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 27164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    .line 27165
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AC;->A0L(Lcom/facebook/ads/redexgen/X/7c;)Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v1

    .line 27166
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7d;->A07(I)Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v0

    .line 27167
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7d;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v0

    .line 27168
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7d;->A06()Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v0

    .line 27169
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27170
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/oo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27171
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    if-eq v0, p1, :cond_3

    .line 27172
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7d;

    .line 27173
    .local v2, "message":Lcom/facebook/ads/redexgen/X/7d;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7d;->A0C()Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27174
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 27175
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Z

    if-eqz v0, :cond_3

    .line 27176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 27177
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    .line 27178
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Z

    .line 27179
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/AA;Landroid/view/Surface;Z)V
    .locals 0

    .line 27180
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AA;->A0F(Landroid/view/Surface;Z)V

    return-void
.end method


# virtual methods
.method public final A0H(IJ)V
    .locals 1

    .line 27181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/oj;->ACe()V

    .line 27182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AC;->A0H(IJ)V

    .line 27183
    return-void
.end method

.method public final A0I()I
    .locals 1

    .line 27184
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A01:I

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    .line 27185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A07:Lcom/facebook/ads/redexgen/X/qI;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    .line 27186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A08:Lcom/facebook/ads/redexgen/X/qI;

    return-object v0
.end method

.method public final A0L()V
    .locals 3

    .line 27187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A0M()V

    .line 27188
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AA;->A0D()V

    .line 27189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 27190
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0C:Z

    if-eqz v0, :cond_0

    .line 27191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 27192
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AA;->A03:Landroid/view/Surface;

    .line 27193
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    if-eqz v0, :cond_2

    .line 27194
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->AIS(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 27195
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    .line 27196
    :cond_2
    return-void
.end method

.method public final A0M(F)V
    .locals 7

    .line 27197
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A00(FFF)F

    move-result v6

    .line 27198
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    .line 27199
    return-void

    .line 27200
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:F

    .line 27201
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AA;->A0M:[Lcom/facebook/ads/redexgen/X/oo;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v5, v3

    .line 27202
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/oo;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/oo;->A9N()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 27203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    .line 27204
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AC;->A0L(Lcom/facebook/ads/redexgen/X/7c;)Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v1

    .line 27205
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7d;->A07(I)Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v1

    .line 27206
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7d;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v0

    .line 27207
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7d;->A06()Lcom/facebook/ads/redexgen/X/7d;

    .line 27208
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/oo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27209
    :cond_2
    return-void
.end method

.method public final A0N(Landroid/view/Surface;)V
    .locals 1

    .line 27210
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AA;->A0D()V

    .line 27211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0F(Landroid/view/Surface;Z)V

    .line 27212
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/3U;)V
    .locals 1

    .line 27213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AC;->A0O(Lcom/facebook/ads/redexgen/X/3U;)V

    .line 27214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27215
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/ol;)V
    .locals 1

    .line 27216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27217
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Cx;)V
    .locals 1

    .line 27218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/AA;->A0R(Lcom/facebook/ads/redexgen/X/Cx;ZZ)V

    .line 27219
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Cx;ZZ)V
    .locals 2

    .line 27220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    if-eqz v0, :cond_0

    .line 27221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->AIS(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 27222
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    .line 27223
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A3z(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/D9;)V

    .line 27224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AC;->A0P(Lcom/facebook/ads/redexgen/X/Cx;ZZ)V

    .line 27225
    return-void
.end method

.method public final A0S(Z)V
    .locals 1

    .line 27226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AC;->A0Q(Z)V

    .line 27227
    return-void
.end method

.method public final A0T()Z
    .locals 1

    .line 27228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A0R()Z

    move-result v0

    return v0
.end method

.method public final A77()J
    .locals 2

    .line 27229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A77()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7T()J
    .locals 2

    .line 27230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7T()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7Y()I
    .locals 1

    .line 27231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7Y()I

    move-result v0

    return v0
.end method

.method public final A7Z()I
    .locals 1

    .line 27232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7Z()I

    move-result v0

    return v0
.end method

.method public final A7b()I
    .locals 1

    .line 27233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7b()I

    move-result v0

    return v0
.end method

.method public final A7c()I
    .locals 1

    .line 27234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7c()I

    move-result v0

    return v0
.end method

.method public final A7e()J
    .locals 2

    .line 27235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 1

    .line 27236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7g()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public final A7h()I
    .locals 1

    .line 27237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7h()I

    move-result v0

    return v0
.end method

.method public final A7s()J
    .locals 2

    .line 27238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A7s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A9J()J
    .locals 2

    .line 27239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->A9J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAd()Z
    .locals 1

    .line 27240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AC;->AAd()Z

    move-result v0

    return v0
.end method

.method public final AKG(Z)V
    .locals 2

    .line 27241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0E:Lcom/facebook/ads/redexgen/X/AC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AC;->AKG(Z)V

    .line 27242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    if-eqz v0, :cond_0

    .line 27243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0G:Lcom/facebook/ads/redexgen/X/oj;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->AIS(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 27244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    .line 27245
    if-eqz p1, :cond_0

    .line 27246
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A0B:Lcom/facebook/ads/redexgen/X/Cx;

    .line 27247
    :cond_0
    return-void
.end method
