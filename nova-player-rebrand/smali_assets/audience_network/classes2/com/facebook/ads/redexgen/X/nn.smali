.class public final Lcom/facebook/ads/redexgen/X/nn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FL;
.implements Lcom/facebook/ads/redexgen/X/Cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/5i;

.field public A02:Lcom/facebook/ads/redexgen/X/Hd;

.field public A03:Z

.field public A04:Z

.field public final A05:J

.field public final A06:Landroid/net/Uri;

.field public final A07:Lcom/facebook/ads/redexgen/X/48;

.field public final A08:Lcom/facebook/ads/redexgen/X/AG;

.field public final A09:Lcom/facebook/ads/redexgen/X/DD;

.field public final A0A:Lcom/facebook/ads/redexgen/X/HA;

.field public final A0B:Lcom/facebook/ads/redexgen/X/HV;

.field public volatile A0C:Z

.field public final synthetic A0D:Lcom/facebook/ads/redexgen/X/9p;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3307
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SSDELygzudefytBtRYlDWoyFfpg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4SEnazR2Nu4dPKZqq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4H9jqKlT7lQdtxWBQl9xa6akogWkCWsp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wknx73gM1GoPE2GN1snRYal1oMjUwY3P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7txELYcTJwThSLRxJ5dUM1K4qPQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gA7GGJKubAjwOro28"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9KdodW4K4GXGszeM7wnefptXiT4TjY3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nn;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9p;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/DD;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/48;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 101607
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101608
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nn;->A06:Landroid/net/Uri;

    .line 101609
    new-instance v0, Lcom/facebook/ads/redexgen/X/AG;

    invoke-direct {v0, p3}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Lcom/facebook/ads/redexgen/X/pF;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    .line 101610
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    .line 101611
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/nn;->A0A:Lcom/facebook/ads/redexgen/X/HA;

    .line 101612
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/nn;->A07:Lcom/facebook/ads/redexgen/X/48;

    .line 101613
    new-instance v0, Lcom/facebook/ads/redexgen/X/HV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A0B:Lcom/facebook/ads/redexgen/X/HV;

    .line 101614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A03:Z

    .line 101615
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cq;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A05:J

    .line 101616
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/nn;)J
    .locals 1

    .line 101617
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A05:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/nn;)J
    .locals 1

    .line 101618
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/nn;)Lcom/facebook/ads/redexgen/X/5i;
    .locals 0

    .line 101619
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/nn;->A01:Lcom/facebook/ads/redexgen/X/5i;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/nn;)Lcom/facebook/ads/redexgen/X/AG;
    .locals 0

    .line 101620
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    return-object p0
.end method

.method private A04(JJ)V
    .locals 1

    .line 101621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A0B:Lcom/facebook/ads/redexgen/X/HV;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 101622
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/nn;->A00:J

    .line 101623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A03:Z

    .line 101624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A04:Z

    .line 101625
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/nn;JJ)V
    .locals 0

    .line 101626
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/nn;->A04(JJ)V

    return-void
.end method


# virtual methods
.method public final A4r()V
    .locals 1

    .line 101627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A0C:Z

    .line 101628
    return-void
.end method

.method public final AAr()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101629
    move-object/from16 v2, p0

    const/4 v1, 0x0

    .line 101630
    .local v2, "result":I
    :goto_0
    if-nez v1, :cond_9

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A0C:Z

    if-nez v0, :cond_9

    .line 101631
    const/4 v0, 0x1

    const-wide/16 v8, -0x1

    :try_start_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0B:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v14, v3, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 101632
    .local v6, "position":J
    new-instance v12, Lcom/facebook/ads/redexgen/X/5i;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/nn;->A06:Landroid/net/Uri;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A0C(Lcom/facebook/ads/redexgen/X/9p;)Ljava/lang/String;

    move-result-object v18

    const-wide/16 v16, -0x1

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v12, v2, Lcom/facebook/ads/redexgen/X/nn;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 101633
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A01:Lcom/facebook/ads/redexgen/X/5i;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/AG;->AGi(Lcom/facebook/ads/redexgen/X/5i;)J

    move-result-wide v16

    .line 101634
    .local v8, "length":J
    cmp-long v3, v16, v8

    if-eqz v3, :cond_0

    .line 101635
    add-long v16, v16, v14

    .line 101636
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A0P(Lcom/facebook/ads/redexgen/X/9p;)V

    .line 101637
    .end local v8    # "length":J
    .local v17, "length":J
    :cond_0
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/9p;->A09(Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 101638
    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    .line 101639
    .local v0, "extractorDataSource":Lcom/facebook/ads/redexgen/X/pF;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A08(Lcom/facebook/ads/redexgen/X/9p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A08(Lcom/facebook/ads/redexgen/X/9p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    iget v4, v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    const/4 v3, -0x1

    if-eq v4, v3, :cond_1

    .line 101640
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A08(Lcom/facebook/ads/redexgen/X/9p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    iget v3, v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    new-instance v11, Lcom/facebook/ads/redexgen/X/9r;

    invoke-direct {v11, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/9r;-><init>(Lcom/facebook/ads/redexgen/X/pF;ILcom/facebook/ads/redexgen/X/Cp;)V

    .line 101641
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9p;->A0Z()Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    .line 101642
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/nn;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9p;->A05()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 101643
    .end local v0    # "extractorDataSource":Lcom/facebook/ads/redexgen/X/pF;
    .local p0, "extractorDataSource":Lcom/facebook/ads/redexgen/X/pF;
    :cond_1
    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/nn;->A06:Landroid/net/Uri;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    .line 101644
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AG;->A8t()Ljava/util/Map;

    move-result-object v13

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0A:Lcom/facebook/ads/redexgen/X/HA;

    .line 101645
    move-object/from16 v18, v3

    invoke-interface/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/DD;->AAB(Lcom/facebook/ads/redexgen/X/pF;Landroid/net/Uri;Ljava/util/Map;JJLcom/facebook/ads/redexgen/X/HA;)V

    .line 101646
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A08(Lcom/facebook/ads/redexgen/X/9p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 101647
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/DD;->A5y()V

    .line 101648
    :cond_2
    iget-boolean v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A03:Z

    if-eqz v3, :cond_3

    .line 101649
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A00:J

    invoke-interface {v5, v14, v15, v3, v4}, Lcom/facebook/ads/redexgen/X/DD;->AJ6(JJ)V

    .line 101650
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A03:Z

    .line 101651
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    iget-boolean v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0C:Z

    if-nez v3, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101652
    :try_start_1
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A07:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/48;->A00()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101653
    :try_start_2
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0B:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/DD;->AHM(Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v1

    .line 101654
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/DD;->A7a()J

    move-result-wide v6

    .line 101655
    .local v8, "currentInputPosition":J
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A01(Lcom/facebook/ads/redexgen/X/9p;)J

    move-result-wide v4

    add-long/2addr v4, v14

    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    .line 101656
    move-wide v14, v6

    .line 101657
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A07:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/48;->A02()Z

    .line 101658
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A04(Lcom/facebook/ads/redexgen/X/9p;)Landroid/os/Handler;

    move-result-object v4

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9p;->A0A(Lcom/facebook/ads/redexgen/X/9p;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 101659
    .end local v0
    .end local v6    # "position":J
    .end local v17    # "length":J
    .end local p0    # "extractorDataSource":Lcom/facebook/ads/redexgen/X/pF;
    .restart local v2    # "result":I
    :cond_4
    if-ne v1, v0, :cond_6

    .line 101660
    const/4 v1, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101661
    .end local v2    # "result":I
    .local v0, "result":I
    :cond_5
    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/pF;)V

    .line 101662
    goto/16 :goto_0

    .line 101663
    .end local v0    # "result":I
    .restart local v2    # "result":I
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DD;->A7a()J

    move-result-wide v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/nn;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/nn;->A0E:[Ljava/lang/String;

    const-string v3, "OKjnlHtv3KbBLefZQYMpPe9SdH47QI1"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_5

    .line 101664
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/nn;->A0B:Lcom/facebook/ads/redexgen/X/HV;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DD;->A7a()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    goto :goto_2

    .line 101665
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    :try_start_3
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v2    # "result":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101666
    :catchall_0
    move-exception v5

    if-eq v1, v0, :cond_8

    .line 101667
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DD;->A7a()J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-eqz v0, :cond_8

    .line 101668
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/nn;->A0B:Lcom/facebook/ads/redexgen/X/HV;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A09:Lcom/facebook/ads/redexgen/X/DD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DD;->A7a()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 101669
    :cond_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/nn;->A08:Lcom/facebook/ads/redexgen/X/AG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5d;->A00(Lcom/facebook/ads/redexgen/X/pF;)V

    .line 101670
    throw v5

    .line 101671
    :cond_9
    return-void
.end method

.method public final AE5(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 12

    .line 101672
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A04:Z

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 101673
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/nn;->A00:J

    .line 101674
    .local v5, "timeUs":J
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v9

    .line 101675
    .local v0, "length":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Hd;

    .line 101676
    .local v2, "icyTrackOutput":Lcom/facebook/ads/redexgen/X/Hd;
    invoke-interface {v5, p1, v9}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 101677
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 101678
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/nn;->A04:Z

    .line 101679
    return-void

    .line 101680
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A0D:Lcom/facebook/ads/redexgen/X/9p;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/9p;->A02(Lcom/facebook/ads/redexgen/X/9p;Z)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nn;->A00:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_0
.end method
