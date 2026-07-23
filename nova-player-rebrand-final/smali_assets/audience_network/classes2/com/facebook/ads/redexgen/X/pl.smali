.class public final Lcom/facebook/ads/redexgen/X/pl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pl;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Ljava/lang/Object;

.field public A04:Ljava/lang/Object;

.field public A05:Z

.field public A06:Lcom/facebook/ads/redexgen/X/qS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3446
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4zGdQbqEEbqON0fsiZAaEQkKoAoKYmna"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yJpzHCnd9V3wUr5Wrx8duzmTaMKaViaS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6le5bHbrSJ1W0fbLNXPlurR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jvR1cNhZ0960aRA7pVRRRMqTg6KbIJja"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KqjZe5mn0dP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z7fKuPhHzVcFnrI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fPry0FIfciS3iZV36uBdTRShtkwqjgIo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pl;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pl;->A0D:Ljava/lang/String;

    .line 3447
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pl;->A0A:Ljava/lang/String;

    .line 3448
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pl;->A0C:Ljava/lang/String;

    .line 3449
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pl;->A0B:Ljava/lang/String;

    .line 3450
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pl;->A09:Ljava/lang/String;

    .line 3451
    new-instance v0, Lcom/facebook/ads/redexgen/X/pp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pp;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pl;->A08:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104780
    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    .line 104781
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/qS;
    .locals 0

    .line 104782
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    return-object p0
.end method

.method public static A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 11

    .line 104783
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A0D:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 104784
    .local v1, "windowIndex":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/pl;->A0A:Ljava/lang/String;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 104785
    .local p2, "durationUs":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/pl;->A0C:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 104786
    .local p4, "positionInWindowUs":J
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 104787
    .local v2, "isPlaceholder":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A09:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 104788
    .local p1, "adPlaybackStateBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 104789
    sget-object v0, Lcom/facebook/ads/redexgen/X/qS;->A09:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/qS;

    .line 104790
    .local p0, "adPlaybackState":Lcom/facebook/ads/redexgen/X/qS;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/pl;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/pl;-><init>()V

    .line 104791
    .local p6, "period":Lcom/facebook/ads/redexgen/X/pl;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .end local p1
    .local p7, "adPlaybackStateBundle":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/pl;->A0G(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/facebook/ads/redexgen/X/qS;Z)Lcom/facebook/ads/redexgen/X/pl;

    .line 104792
    return-object v1

    .line 104793
    :cond_0
    sget-object v9, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    goto :goto_0
.end method

.method public static synthetic A02(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/pl;->A01(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 104794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qS;->A00:I

    return v0
.end method

.method public final A04(I)I
    .locals 1

    .line 104795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    return v0
.end method

.method public final A05(I)I
    .locals 1

    .line 104796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A04()I

    move-result v0

    return v0
.end method

.method public final A06(II)I
    .locals 1

    .line 104797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/qT;->A05(I)I

    move-result v0

    return v0
.end method

.method public final A07(J)I
    .locals 3

    .line 104798
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/qS;->A05(JJ)I

    move-result v0

    return v0
.end method

.method public final A08(J)I
    .locals 3

    .line 104799
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/qS;->A06(JJ)I

    move-result v0

    return v0
.end method

.method public final A09()J
    .locals 2

    .line 104800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/qS;->A02:J

    return-wide v0
.end method

.method public final A0A()J
    .locals 2

    .line 104801
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    return-wide v0
.end method

.method public final A0B()J
    .locals 2

    .line 104802
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/5C;->A0P(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0C()J
    .locals 2

    .line 104803
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    return-wide v0
.end method

.method public final A0D(I)J
    .locals 2

    .line 104804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/qT;->A03:J

    return-wide v0
.end method

.method public final A0E(II)J
    .locals 3

    .line 104805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v2

    .line 104806
    .local v0, "adGroup":Lcom/facebook/ads/redexgen/X/qT;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/qT;->A06:[J

    aget-wide v0, v0, p2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A0F(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/facebook/ads/redexgen/X/pl;
    .locals 10

    .line 104807
    sget-object v8, Lcom/facebook/ads/redexgen/X/qS;->A08:Lcom/facebook/ads/redexgen/X/qS;

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move-object v2, p2

    move-wide/from16 v6, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/pl;->A0G(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/facebook/ads/redexgen/X/qS;Z)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/facebook/ads/redexgen/X/qS;Z)Lcom/facebook/ads/redexgen/X/pl;
    .locals 0

    .line 104808
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pl;->A03:Ljava/lang/Object;

    .line 104809
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    .line 104810
    iput p3, p0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    .line 104811
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    .line 104812
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    .line 104813
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    .line 104814
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/pl;->A05:Z

    .line 104815
    return-object p0
.end method

.method public final A0H(I)Z
    .locals 1

    .line 104816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qS;->A07(I)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A07()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A0I(II)Z
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Can be removed once MediaPeriodQueue is updated."
    .end annotation

    .line 104817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qS;->A05:[Lcom/facebook/ads/redexgen/X/qT;

    aget-object v2, v0, p1

    .line 104818
    .local v0, "adGroup":Lcom/facebook/ads/redexgen/X/qT;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/qT;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/qT;->A05:[I

    aget v0, v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 104819
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 104820
    return v5

    .line 104821
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104822
    .end local v2
    :cond_1
    return v2

    .line 104823
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/pl;

    .line 104824
    .local v2, "that":Lcom/facebook/ads/redexgen/X/pl;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pl;->A03:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pl;->A03:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    .line 104825
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    if-ne v1, v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/pl;->A05:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pl;->A05:Z

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    .line 104826
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104827
    :goto_0
    return v5

    .line 104828
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .line 104829
    const/4 v0, 0x7

    .line 104830
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A03:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v2, v0

    .line 104831
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v4, v2, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_1
    add-int/2addr v4, v1

    .line 104832
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A00:I

    add-int/2addr v1, v0

    .line 104833
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A01:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 104834
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v4, v4, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A02:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 104835
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A05:Z

    add-int/2addr v1, v0

    .line 104836
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A06:Lcom/facebook/ads/redexgen/X/qS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qS;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 104837
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 104838
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/pl;->A04:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/pl;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/pl;->A07:[Ljava/lang/String;

    const-string v1, "a7xjZFv85Fgc1YV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 104839
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pl;->A03:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
