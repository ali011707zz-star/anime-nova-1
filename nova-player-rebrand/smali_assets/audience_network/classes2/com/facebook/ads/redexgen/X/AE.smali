.class public abstract Lcom/facebook/ads/redexgen/X/AE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/oo;
.implements Lcom/facebook/ads/redexgen/X/7p;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/7s;

.field public A06:Lcom/facebook/ads/redexgen/X/8O;

.field public A07:Lcom/facebook/ads/redexgen/X/DT;

.field public A08:Z

.field public A09:Z

.field public A0A:[Lcom/facebook/ads/redexgen/X/qI;

.field public A0B:Lcom/facebook/ads/redexgen/X/ir;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D18870411: Adding start stall debug reason"
    .end annotation
.end field

.field public final A0C:I

.field public final A0D:Lcom/facebook/ads/redexgen/X/6z;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 28811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28812
    sget-object v0, Lcom/facebook/ads/redexgen/X/ir;->A09:Lcom/facebook/ads/redexgen/X/ir;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0B:Lcom/facebook/ads/redexgen/X/ir;

    .line 28813
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AE;->A0C:I

    .line 28814
    new-instance v0, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6z;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0D:Lcom/facebook/ads/redexgen/X/6z;

    .line 28815
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    .line 28816
    return-void
.end method

.method private final A1O()I
    .locals 1

    .line 28817
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A00:I

    return v0
.end method

.method private A1P(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    .line 28819
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/AE;->A02:J

    .line 28820
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    .line 28821
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AE;->A1a(JZ)V

    .line 28822
    return-void
.end method


# virtual methods
.method public final A1Q(J)I
    .locals 3

    .line 28823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/DT;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A04:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/DT;->AK2(J)I

    move-result v0

    return v0
.end method

.method public final A1R(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Keep track of the non-adjusted timestamp"
    .end annotation

    .line 28824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DT;->AHP(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/p0;I)I

    move-result v5

    .line 28825
    .local v0, "result":I
    const/4 v2, -0x4

    if-ne v5, v2, :cond_2

    .line 28826
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28827
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    .line 28828
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x3

    goto :goto_0

    .line 28829
    :cond_1
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/p0;->A00:J

    .line 28830
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A04:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    .line 28831
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    goto :goto_1

    .line 28832
    :cond_2
    const/4 v0, -0x5

    if-ne v5, v0, :cond_3

    .line 28833
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/qI;

    .line 28834
    .local v1, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 28835
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v4

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A04:J

    add-long/2addr v2, v0

    .line 28836
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0s(J)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 28837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    .line 28838
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/6z;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 28839
    .end local v1    # "format":Lcom/facebook/ads/redexgen/X/qI;
    :cond_3
    :goto_1
    return v5
.end method

.method public final A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;I)Lcom/facebook/ads/redexgen/X/AD;
    .locals 1

    .line 28840
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/AE;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;ZI)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    return-object v0
.end method

.method public final A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;ZI)Lcom/facebook/ads/redexgen/X/AD;
    .locals 7

    .line 28841
    const/4 v4, 0x4

    .line 28842
    .local v0, "formatSupport":I
    move-object v3, p2

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A09:Z

    if-nez v0, :cond_0

    .line 28843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A09:Z

    .line 28844
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v3}, Lcom/facebook/ads/redexgen/X/7p;->AKM(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A03(I)I

    move-result v4

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AD; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28845
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A09:Z

    .line 28846
    throw v0

    .line 28847
    :catch_0
    :goto_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A09:Z

    .line 28848
    :cond_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/oo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1O()I

    move-result v2

    .line 28849
    move v6, p4

    move v5, p3

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/AD;->A04(Ljava/lang/Throwable;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/qI;IZI)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    return-object v0
.end method

.method public final A1U()Lcom/facebook/ads/redexgen/X/6z;
    .locals 1

    .line 28850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0D:Lcom/facebook/ads/redexgen/X/6z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A00()V

    .line 28851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0D:Lcom/facebook/ads/redexgen/X/6z;

    return-object v0
.end method

.method public final A1V()Lcom/facebook/ads/redexgen/X/7s;
    .locals 1

    .line 28852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A05:Lcom/facebook/ads/redexgen/X/7s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7s;

    return-object v0
.end method

.method public final A1W()Lcom/facebook/ads/redexgen/X/8O;
    .locals 1

    .line 28853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A06:Lcom/facebook/ads/redexgen/X/8O;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8O;

    return-object v0
.end method

.method public A1X()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28854
    return-void
.end method

.method public A1Y()V
    .locals 0

    .line 28855
    return-void
.end method

.method public abstract A1Z()V
.end method

.method public abstract A1a(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation
.end method

.method public A1b(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28856
    return-void
.end method

.method public abstract A1c([Lcom/facebook/ads/redexgen/X/qI;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation
.end method

.method public final A1d()Z
    .locals 1

    .line 28857
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A9p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DT;->AAe()Z

    move-result v0

    goto :goto_0
.end method

.method public final A1e()[Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    .line 28858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0A:[Lcom/facebook/ads/redexgen/X/qI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/qI;

    return-object v0
.end method

.method public final A5x()V
    .locals 3

    .line 28859
    iget v2, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 28860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0D:Lcom/facebook/ads/redexgen/X/6z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6z;->A00()V

    .line 28861
    iput v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    .line 28862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    .line 28863
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0A:[Lcom/facebook/ads/redexgen/X/qI;

    .line 28864
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    .line 28865
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1Z()V

    .line 28866
    return-void

    .line 28867
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6L(Lcom/facebook/ads/redexgen/X/7s;[Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/DT;JZZJJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28868
    move-object v2, p0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 28869
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/AE;->A05:Lcom/facebook/ads/redexgen/X/7s;

    .line 28870
    iput v1, v2, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    .line 28871
    move v0, p7

    invoke-virtual {p0, p6, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1b(ZZ)V

    .line 28872
    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide v3, p8

    move-object v2, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/AE;->AIa([Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/DT;JJ)V

    .line 28873
    invoke-direct {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/AE;->A1P(JZ)V

    .line 28874
    return-void

    .line 28875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7D()Lcom/facebook/ads/redexgen/X/7p;
    .locals 0

    .line 28876
    return-object p0
.end method

.method public A8T()Lcom/facebook/ads/redexgen/X/78;
    .locals 1

    .line 28877
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A99()Lcom/facebook/ads/redexgen/X/ir;
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "D18870411: Adding start stall debug reason"
    .end annotation

    .line 28878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0B:Lcom/facebook/ads/redexgen/X/ir;

    return-object v0
.end method

.method public final A9A()I
    .locals 1

    .line 28879
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    return v0
.end method

.method public final A9D()Lcom/facebook/ads/redexgen/X/DT;
    .locals 1

    .line 28880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    return-object v0
.end method

.method public final A9N()I
    .locals 1

    .line 28881
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A0C:I

    return v0
.end method

.method public A9i(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28882
    return-void
.end method

.method public final A9p()Z
    .locals 5

    .line 28883
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AA9(ILcom/facebook/ads/redexgen/X/8O;)V
    .locals 0

    .line 28884
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AE;->A00:I

    .line 28885
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AE;->A06:Lcom/facebook/ads/redexgen/X/8O;

    .line 28886
    return-void
.end method

.method public final AAN()Z
    .locals 1

    .line 28887
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    return v0
.end method

.method public final ACU()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DT;->ACR()V

    .line 28889
    return-void
.end method

.method public final AIa([Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/DT;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28890
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 28891
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AE;->A07:Lcom/facebook/ads/redexgen/X/DT;

    .line 28892
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    move-wide v2, p3

    if-nez v0, :cond_0

    .line 28893
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/AE;->A03:J

    .line 28894
    :cond_0
    move-object v1, p1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A0A:[Lcom/facebook/ads/redexgen/X/qI;

    .line 28895
    move-wide v4, p5

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AE;->A04:J

    .line 28896
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AE;->A1c([Lcom/facebook/ads/redexgen/X/qI;JJ)V

    .line 28897
    return-void
.end method

.method public final AIm(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28898
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/AE;->A1P(JZ)V

    .line 28899
    return-void
.end method

.method public final AJN()V
    .locals 1

    .line 28900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A08:Z

    .line 28901
    return-void
.end method

.method public AKO()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28902
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 28903
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 28904
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    .line 28905
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1X()V

    .line 28906
    return-void

    .line 28907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3

    .line 28908
    iget v2, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 28909
    iput v1, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:I

    .line 28910
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AE;->A1Y()V

    .line 28911
    return-void

    .line 28912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
