.class public final Lcom/facebook/ads/redexgen/X/2p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:I

.field public A0J:I

.field public A0K:J

.field public A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

.field public A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

.field public A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

.field public A0O:Ljava/lang/Object;

.field public A0P:Ljava/lang/String;

.field public A0Q:Ljava/lang/String;

.field public A0R:Ljava/lang/String;

.field public A0S:Ljava/lang/String;

.field public A0T:Ljava/lang/String;

.field public A0U:Ljava/lang/String;

.field public A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public A0W:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9614
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    .line 9615
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0B:I

    .line 9616
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A09:I

    .line 9617
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0K:J

    .line 9618
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0J:I

    .line 9619
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A08:I

    .line 9620
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:F

    .line 9621
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:F

    .line 9622
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0G:I

    .line 9623
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    .line 9624
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0E:I

    .line 9625
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0A:I

    .line 9626
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:I

    .line 9627
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0H:I

    .line 9628
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A0I:I

    .line 9629
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    .line 9630
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 2

    .line 9631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9632
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0T:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0R:Ljava/lang/String;

    .line 9633
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0U:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0S:Ljava/lang/String;

    .line 9634
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0T:Ljava/lang/String;

    .line 9635
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0H:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0F:I

    .line 9636
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0C:I

    .line 9637
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    .line 9638
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0B:I

    .line 9639
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0P:Ljava/lang/String;

    .line 9640
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0P:Lcom/facebook/ads/androidx/media3/common/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 9641
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0S:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0Q:Ljava/lang/String;

    .line 9642
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0U:Ljava/lang/String;

    .line 9643
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A09:I

    .line 9644
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0X:Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0V:Ljava/util/List;

    .line 9645
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 9646
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0K:J

    .line 9647
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0J:I

    .line 9648
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A08:I

    .line 9649
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:F

    .line 9650
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0D:I

    .line 9651
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:F

    .line 9652
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0Y:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0W:[B

    .line 9653
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0I:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0G:I

    .line 9654
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 9655
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    .line 9656
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0E:I

    .line 9657
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0A:I

    .line 9658
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A06:I

    .line 9659
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A07:I

    .line 9660
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:I

    .line 9661
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0J:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0H:I

    .line 9662
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0K:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0I:I

    .line 9663
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    .line 9664
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0Q:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0O:Ljava/lang/Object;

    .line 9665
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/2o;)V
    .locals 0

    .line 9666
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2p;-><init>(Lcom/facebook/ads/redexgen/X/qI;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2p;)F
    .locals 0

    .line 9667
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2p;)F
    .locals 0

    .line 9668
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:F

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9669
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A09:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9670
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0J:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9671
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A08:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9672
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0D:I

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9673
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0G:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9674
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9675
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0E:I

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9676
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0A:I

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9677
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A06:I

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9678
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A07:I

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9679
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:I

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9680
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0H:I

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9681
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0I:I

    return p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9682
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    return p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9683
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0F:I

    return p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9684
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0C:I

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9685
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/2p;)I
    .locals 0

    .line 9686
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0B:I

    return p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/2p;)J
    .locals 1

    .line 9687
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0K:J

    return-wide v0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/2p;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    .locals 0

    .line 9688
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    return-object p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/2p;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .locals 0

    .line 9689
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    return-object p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/2p;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 0

    .line 9690
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

    return-object p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/Object;
    .locals 0

    .line 9691
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0O:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/String;
    .locals 0

    .line 9692
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0R:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/String;
    .locals 0

    .line 9693
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0Q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/String;
    .locals 0

    .line 9694
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0U:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/String;
    .locals 0

    .line 9695
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0S:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/String;
    .locals 0

    .line 9696
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0T:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/2p;)Ljava/lang/String;
    .locals 0

    .line 9697
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/2p;)Ljava/util/List;
    .locals 0

    .line 9698
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0V:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/2p;)[B
    .locals 0

    .line 9699
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0W:[B

    return-object p0
.end method


# virtual methods
.method public final A0X(F)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9700
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:F

    .line 9701
    return-object p0
.end method

.method public final A0Y(F)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9702
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:F

    .line 9703
    return-object p0
.end method

.method public final A0Z(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9704
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:I

    .line 9705
    return-object p0
.end method

.method public final A0a(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9706
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    .line 9707
    return-object p0
.end method

.method public final A0b(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9708
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    .line 9709
    return-object p0
.end method

.method public final A0c(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9710
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    .line 9711
    return-object p0
.end method

.method public final A0d(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9712
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A06:I

    .line 9713
    return-object p0
.end method

.method public final A0e(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9714
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A07:I

    .line 9715
    return-object p0
.end method

.method public final A0f(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9716
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A08:I

    .line 9717
    return-object p0
.end method

.method public final A0g(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 1

    .line 9718
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A0R:Ljava/lang/String;

    .line 9719
    return-object p0
.end method

.method public final A0h(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9720
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A09:I

    .line 9721
    return-object p0
.end method

.method public final A0i(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9722
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0A:I

    .line 9723
    return-object p0
.end method

.method public final A0j(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9724
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0B:I

    .line 9725
    return-object p0
.end method

.method public final A0k(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9726
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0C:I

    .line 9727
    return-object p0
.end method

.method public final A0l(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9728
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0D:I

    .line 9729
    return-object p0
.end method

.method public final A0m(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9730
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0E:I

    .line 9731
    return-object p0
.end method

.method public final A0n(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9732
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0F:I

    .line 9733
    return-object p0
.end method

.method public final A0o(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9734
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0G:I

    .line 9735
    return-object p0
.end method

.method public final A0p(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9736
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0H:I

    .line 9737
    return-object p0
.end method

.method public final A0q(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9738
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0I:I

    .line 9739
    return-object p0
.end method

.method public final A0r(I)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9740
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0J:I

    .line 9741
    return-object p0
.end method

.method public final A0s(J)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9742
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0K:J

    .line 9743
    return-object p0
.end method

.method public final A0t(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9744
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0L:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 9745
    return-object p0
.end method

.method public final A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Processing CryptoType for callers that don\'t know about it"
    .end annotation

    .line 9746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0M:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 9747
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A05:I

    if-nez v0, :cond_0

    .line 9748
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0c(I)Lcom/facebook/ads/redexgen/X/2p;

    .line 9749
    :cond_0
    return-object p0
.end method

.method public final A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9750
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0N:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 9751
    return-object p0
.end method

.method public final A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9752
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0P:Ljava/lang/String;

    .line 9753
    return-object p0
.end method

.method public final A0x(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9754
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0Q:Ljava/lang/String;

    .line 9755
    return-object p0
.end method

.method public final A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9756
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0R:Ljava/lang/String;

    .line 9757
    return-object p0
.end method

.method public final A0z(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9758
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0S:Ljava/lang/String;

    .line 9759
    return-object p0
.end method

.method public final A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0T:Ljava/lang/String;

    .line 9761
    return-object p0
.end method

.method public final A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9762
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0U:Ljava/lang/String;

    .line 9763
    return-object p0
.end method

.method public final A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/facebook/ads/redexgen/X/2p;"
        }
    .end annotation

    .line 9764
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0V:Ljava/util/List;

    .line 9765
    return-object p0
.end method

.method public final A13([B)Lcom/facebook/ads/redexgen/X/2p;
    .locals 0

    .line 9766
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A0W:[B

    .line 9767
    return-object p0
.end method

.method public final A14()Lcom/facebook/ads/redexgen/X/qI;
    .locals 2

    .line 9768
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/qI;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/qI;-><init>(Lcom/facebook/ads/redexgen/X/2p;Lcom/facebook/ads/redexgen/X/2o;)V

    return-object v0
.end method
