.class public final Lcom/facebook/ads/redexgen/X/iT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B+\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\u001a\u0010\u0014\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\r\"\u0004\u0008\u0016\u0010\u000fR$\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\r\"\u0004\u0008\u001a\u0010\u000fR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/facebook/video/framebasedlogging/VideoFrameInfo;",
        "",
        "videoId",
        "",
        "encodingTimestamp",
        "",
        "displayPlayerTimestamp",
        "displayUnixTimestamp",
        "<init>",
        "(Ljava/lang/String;JJJ)V",
        "getVideoId",
        "()Ljava/lang/String;",
        "getEncodingTimestamp",
        "()J",
        "setEncodingTimestamp",
        "(J)V",
        "getDisplayPlayerTimestamp",
        "setDisplayPlayerTimestamp",
        "getDisplayUnixTimestamp",
        "setDisplayUnixTimestamp",
        "audioTimestamp",
        "getAudioTimestamp",
        "setAudioTimestamp",
        "value",
        "viewable50Timestamp",
        "getViewable50Timestamp",
        "setViewable50Timestamp",
        "UNIT_CONVERSION_FACTOR",
        "",
        "toStringList",
        "",
        "fbandroid.java.com.facebook.video.framebasedlogging.framebasedlogging_an"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public final A05:I

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    .line 86819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86820
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iT;->A06:Ljava/lang/String;

    .line 86821
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A05:I

    .line 86822
    iget v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A05:I

    int-to-long v0, v0

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A03:J

    .line 86823
    iget v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A05:I

    int-to-long v0, v0

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A01:J

    .line 86824
    iget v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A05:I

    int-to-long v0, v0

    mul-long/2addr v0, p6

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A02:J

    .line 86825
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A00:J

    .line 86826
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/iT;->A0A(J)V

    .line 86827
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 86828
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A00:J

    return-wide v0
.end method

.method public final A01()J
    .locals 2

    .line 86829
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A01:J

    return-wide v0
.end method

.method public final A02()J
    .locals 2

    .line 86830
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A02:J

    return-wide v0
.end method

.method public final A03()J
    .locals 2

    .line 86831
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A03:J

    return-wide v0
.end method

.method public final A04()J
    .locals 2

    .line 86832
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A04:J

    return-wide v0
.end method

.method public final A05()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86833
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A03:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 86834
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A01:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 86835
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A02:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 86836
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Af;->A07([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 86837
    return-object v0
.end method

.method public final A06(J)V
    .locals 0

    .line 86838
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/iT;->A00:J

    return-void
.end method

.method public final A07(J)V
    .locals 0

    .line 86839
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/iT;->A01:J

    return-void
.end method

.method public final A08(J)V
    .locals 0

    .line 86840
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/iT;->A02:J

    return-void
.end method

.method public final A09(J)V
    .locals 0

    .line 86841
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/iT;->A03:J

    return-void
.end method

.method public final A0A(J)V
    .locals 2

    .line 86842
    iget v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A05:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iT;->A04:J

    .line 86843
    return-void
.end method
