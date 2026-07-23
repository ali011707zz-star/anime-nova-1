.class public final Lcom/facebook/ads/redexgen/X/9n;
.super Lcom/facebook/ads/redexgen/X/nv;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9o;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/5t;

.field public A02:Lcom/facebook/ads/redexgen/X/ku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/ku<",
            "Lcom/facebook/ads/redexgen/X/Fb;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/32;

.field public final A08:Lcom/facebook/ads/redexgen/X/q7;

.field public final A09:Lcom/facebook/ads/redexgen/X/5Y;

.field public final A0A:Lcom/facebook/ads/redexgen/X/A6;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/FF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/q7;Lcom/facebook/ads/redexgen/X/5Y;Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/FF;ILcom/facebook/ads/redexgen/X/ku;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Allow for passing a new drmSessionManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/q7;",
            "Lcom/facebook/ads/redexgen/X/5Y;",
            "Lcom/facebook/ads/redexgen/X/DC;",
            "Lcom/facebook/ads/redexgen/X/A6;",
            "Lcom/facebook/ads/redexgen/X/FF;",
            "I",
            "Lcom/facebook/ads/redexgen/X/ku<",
            "Lcom/facebook/ads/redexgen/X/Fb;",
            ">;)V"
        }
    .end annotation

    .line 25738
    .local p7, "downloadExecutor":Lcom/facebook/ads/redexgen/X/ku;, "Lcom/google/common/base/Supplier<Lcom/facebook/ads/androidx/media3/exoplayer/util/ReleasableExecutor;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nv;-><init>()V

    .line 25739
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/q7;->A03:Lcom/facebook/ads/redexgen/X/32;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/32;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A07:Lcom/facebook/ads/redexgen/X/32;

    .line 25740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9n;->A08:Lcom/facebook/ads/redexgen/X/q7;

    .line 25741
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9n;->A09:Lcom/facebook/ads/redexgen/X/5Y;

    .line 25742
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9n;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    .line 25743
    if-nez p4, :cond_0

    sget-object p4, Lcom/facebook/ads/redexgen/X/A6;->A00:Lcom/facebook/ads/redexgen/X/A6;

    :cond_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9n;->A0A:Lcom/facebook/ads/redexgen/X/A6;

    .line 25744
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/9n;->A0C:Lcom/facebook/ads/redexgen/X/FF;

    .line 25745
    iput p6, p0, Lcom/facebook/ads/redexgen/X/9n;->A06:I

    .line 25746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A04:Z

    .line 25747
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A00:J

    .line 25748
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/9n;->A02:Lcom/facebook/ads/redexgen/X/ku;

    .line 25749
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/q7;Lcom/facebook/ads/redexgen/X/5Y;Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/FF;ILcom/facebook/ads/redexgen/X/ku;Lcom/facebook/ads/redexgen/X/1e;)V
    .locals 0

    .line 25750
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Lcom/facebook/ads/redexgen/X/q7;Lcom/facebook/ads/redexgen/X/5Y;Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/FF;ILcom/facebook/ads/redexgen/X/ku;)V

    return-void
.end method

.method private A00()V
    .locals 9

    .line 25751
    new-instance v1, Lcom/facebook/ads/redexgen/X/9m;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9n;->A00:J

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/9n;->A05:Z

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/9n;->A03:Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/9n;->A08:Lcom/facebook/ads/redexgen/X/q7;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/9m;-><init>(JZZZLjava/lang/Object;Lcom/facebook/ads/redexgen/X/q7;)V

    .line 25752
    .local v0, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A04:Z

    if-eqz v0, :cond_0

    .line 25753
    new-instance v0, Lcom/facebook/ads/redexgen/X/1e;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1e;-><init>(Lcom/facebook/ads/redexgen/X/9n;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    move-object v1, v0

    .line 25754
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/nv;->A05(Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 25755
    return-void
.end method


# virtual methods
.method public final A09()V
    .locals 0

    .line 25756
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 3

    .line 25757
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9n;->A01:Lcom/facebook/ads/redexgen/X/5t;

    .line 25758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A0A:Lcom/facebook/ads/redexgen/X/A6;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/A6;->AH4()V

    .line 25759
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9n;->A0A:Lcom/facebook/ads/redexgen/X/A6;

    .line 25760
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nv;->A00()Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v0

    .line 25761
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A6;->AJe(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/8O;)V

    .line 25762
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9n;->A00()V

    .line 25763
    return-void
.end method

.method public final A5W(Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/F0;J)Lcom/facebook/ads/redexgen/X/np;
    .locals 16
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "PlayerId needs to be set"
    .end annotation

    .line 25764
    move-object/from16 v1, p0

    move-object v1, v1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A09:Lcom/facebook/ads/redexgen/X/5Y;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5Y;->A5I()Lcom/facebook/ads/redexgen/X/pF;

    move-result-object v5

    .line 25765
    .local v14, "dataSource":Lcom/facebook/ads/redexgen/X/pF;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A01:Lcom/facebook/ads/redexgen/X/5t;

    if-eqz v0, :cond_0

    .line 25766
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A01:Lcom/facebook/ads/redexgen/X/5t;

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 25767
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/9p;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A07:Lcom/facebook/ads/redexgen/X/32;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/32;->A00:Landroid/net/Uri;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/9n;->A0B:Lcom/facebook/ads/redexgen/X/DC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8O;->A03:Lcom/facebook/ads/redexgen/X/8O;

    .line 25768
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/DC;->A5X(Lcom/facebook/ads/redexgen/X/8O;)Lcom/facebook/ads/redexgen/X/DD;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/9n;->A0A:Lcom/facebook/ads/redexgen/X/A6;

    .line 25769
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/nv;->A01(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/A1;

    move-result-object v8

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/9n;->A0C:Lcom/facebook/ads/redexgen/X/FF;

    .line 25770
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/nv;->A02(Lcom/facebook/ads/redexgen/X/no;)Lcom/facebook/ads/redexgen/X/D8;

    move-result-object v10

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A07:Lcom/facebook/ads/redexgen/X/32;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/32;->A04:Ljava/lang/String;

    iget v14, v1, Lcom/facebook/ads/redexgen/X/9n;->A06:I

    .line 25771
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A02:Lcom/facebook/ads/redexgen/X/ku;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9n;->A02:Lcom/facebook/ads/redexgen/X/ku;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ku;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/Fb;

    :goto_0
    move-object v11, v1

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/9p;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/DD;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/FF;Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/DI;Lcom/facebook/ads/redexgen/X/F0;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Fb;)V

    .line 25772
    return-object v3

    .line 25773
    :cond_1
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public final ACT()V
    .locals 0

    .line 25774
    return-void
.end method

.method public final AG0(JZZ)V
    .locals 3

    .line 25775
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/9n;->A00:J

    .line 25776
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A04:Z

    if-nez v0, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9n;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A05:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A03:Z

    if-ne v0, p4, :cond_1

    .line 25777
    return-void

    .line 25778
    :cond_1
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9n;->A00:J

    .line 25779
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/9n;->A05:Z

    .line 25780
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/9n;->A03:Z

    .line 25781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9n;->A04:Z

    .line 25782
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9n;->A00()V

    .line 25783
    return-void
.end method

.method public final AHk(Lcom/facebook/ads/redexgen/X/np;)V
    .locals 0

    .line 25784
    check-cast p1, Lcom/facebook/ads/redexgen/X/9p;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9p;->A0a()V

    .line 25785
    return-void
.end method
