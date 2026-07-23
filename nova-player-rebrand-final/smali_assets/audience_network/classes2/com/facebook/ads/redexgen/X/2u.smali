.class public final Lcom/facebook/ads/redexgen/X/2u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/net/Uri;

.field public A01:Lcom/facebook/ads/redexgen/X/2v;

.field public A02:Lcom/facebook/ads/redexgen/X/2x;

.field public A03:Lcom/facebook/ads/redexgen/X/30;

.field public A04:Lcom/facebook/ads/redexgen/X/q2;

.field public A05:Ljava/lang/Object;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 143
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HPaW60WB4gFqlzK247iq3uDphWK03Iif"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KBvaSaTKxPBSHh58MHpb5CG0KegQKkr9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "b1r5E5Hd4zdNoyuaEQVQsO4l4ctoImRB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nKy6zg3qdMWmj624cOZmm65wxaqanW8E"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pbs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7xj4kZWUPnGFCehZwFfpDVbkpfFBWPXP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TYkILCf2Xs5AkCVGSR3QMYIpsRVtVxUs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J3EyGmSR6mO6g6CSn2CxG4G4HI4UvZHg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9778
    new-instance v0, Lcom/facebook/ads/redexgen/X/2v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/2v;

    .line 9779
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2x;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2x;-><init>(Lcom/facebook/ads/redexgen/X/2r;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/2x;

    .line 9780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A09:Ljava/util/List;

    .line 9781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A0A:Ljava/util/List;

    .line 9782
    new-instance v0, Lcom/facebook/ads/redexgen/X/30;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/30;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/30;

    .line 9783
    return-void
.end method


# virtual methods
.method public final A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/2u;
    .locals 0

    .line 9784
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:Landroid/net/Uri;

    .line 9785
    return-object p0
.end method

.method public final A01(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2u;
    .locals 0

    .line 9786
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2u;->A05:Ljava/lang/Object;

    .line 9787
    return-object p0
.end method

.method public final A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2u;
    .locals 0

    .line 9788
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Ljava/lang/String;

    .line 9789
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2u;
    .locals 1

    .line 9790
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Ljava/lang/String;

    .line 9791
    return-object p0
.end method

.method public final A04(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/StreamKey;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/2u;"
        }
    .end annotation

    .line 9792
    .local v2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/StreamKey;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0B:[Ljava/lang/String;

    const-string v1, "MqTMGNvSZ5CI9kiBQqDgyIk0OkVIIG8t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 9793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9794
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A09:Ljava/util/List;

    .line 9795
    return-object p0

    .line 9796
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/q7;
    .locals 11

    .line 9797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/2x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2x;->A00(Lcom/facebook/ads/redexgen/X/2x;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/2x;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2u;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2u;->A0B:[Ljava/lang/String;

    const-string v1, "LsaTJZF6o4X1Tfg01qMfqEHPxyZhwdJj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2x;->A03(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 9798
    const/4 v1, 0x0

    .line 9799
    .local v0, "localConfiguration":Lcom/facebook/ads/redexgen/X/q9;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:Landroid/net/Uri;

    .line 9800
    .local p0, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 9801
    new-instance v1, Lcom/facebook/ads/redexgen/X/q9;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A08:Ljava/lang/String;

    .line 9802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/2x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2x;->A03(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A02:Lcom/facebook/ads/redexgen/X/2x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2x;->A08()Lcom/facebook/ads/redexgen/X/2y;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2u;->A09:Ljava/util/List;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2u;->A06:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/2u;->A0A:Ljava/util/List;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/2u;->A05:Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/q9;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2t;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/2r;)V

    .line 9803
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/q7;

    .line 9804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2u;->A07:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A01:Lcom/facebook/ads/redexgen/X/2v;

    .line 9805
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2v;->A0B()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A03:Lcom/facebook/ads/redexgen/X/30;

    .line 9806
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/30;->A05()Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v6

    .line 9807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/q2;

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2u;->A04:Lcom/facebook/ads/redexgen/X/q2;

    :goto_3
    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/q7;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AW;Lcom/facebook/ads/redexgen/X/q9;Lcom/facebook/ads/redexgen/X/qA;Lcom/facebook/ads/redexgen/X/q2;Lcom/facebook/ads/redexgen/X/2r;)V

    .line 9808
    return-object v2

    .line 9809
    :cond_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/q2;->A0Z:Lcom/facebook/ads/redexgen/X/q2;

    goto :goto_3

    .line 9810
    :cond_3
    const-string v3, ""

    goto :goto_2

    .line 9811
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 9812
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
