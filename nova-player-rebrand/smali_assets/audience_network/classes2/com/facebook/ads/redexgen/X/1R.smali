.class public final Lcom/facebook/ads/redexgen/X/1R;
.super Lcom/facebook/ads/redexgen/X/8T;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/util/regex/Pattern;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KC;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/K7;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 95
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W2LX5ghCjNUdHPD6UOG9gNVP2r8Jjr9N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hy0Kd51hxMRklx2U40MO6uTjDebxbFFc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3rXKYQ25IDS9XLMelMDoz8fDuc1jWejt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VHZF6nyXCVj1GWlzSFxOxU8Mk9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1hZxQPwvp7yuSjm13xBtOFGqAv7wvaBL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2txr67moghbeiUbFZCBGyiXHK8tBuFWn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gHf8B0vtrS2LcJp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "q573XCdkPfkFHQHQX29TvMro8DPY3qfe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1R;->A09()V

    const/4 v2, 0x1

    const/16 v1, 0x1f

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1R;->A07:Ljava/util/regex/Pattern;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5906
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1R;-><init>(Ljava/util/List;)V

    .line 5907
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 5908
    .local v4, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8T;-><init>(Ljava/lang/String;)V

    .line 5909
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A01:F

    .line 5910
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A00:F

    .line 5911
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5912
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1R;->A04:Z

    .line 5913
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0q([B)Ljava/lang/String;

    move-result-object v3

    .line 5914
    .local v0, "formatLine":Ljava/lang/String;
    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 5915
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/K7;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K7;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Lcom/facebook/ads/redexgen/X/K7;

    .line 5916
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1R;->A0A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 5917
    .end local v0    # "formatLine":Ljava/lang/String;
    :goto_0
    return-void

    .line 5918
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1R;->A04:Z

    .line 5919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Lcom/facebook/ads/redexgen/X/K7;

    goto :goto_0
.end method

.method public static A00(I)F
    .locals 0

    .line 5920
    packed-switch p0, :pswitch_data_0

    .line 5921
    const p0, -0x800001

    return p0

    .line 5922
    :pswitch_0
    const p0, 0x3f733333    # 0.95f

    return p0

    .line 5923
    :pswitch_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    .line 5924
    :pswitch_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(I)I
    .locals 5

    .line 5925
    const/high16 v4, -0x80000000

    packed-switch p0, :pswitch_data_0

    .line 5926
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xef

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5927
    return v4

    .line 5928
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 5929
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 5930
    :pswitch_3
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "Sg07jKGUv12uLKgMKKFA3fI9zPLxcTEi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 5931
    :pswitch_4
    return v4

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static A02(I)I
    .locals 5

    .line 5932
    const/high16 v4, -0x80000000

    packed-switch p0, :pswitch_data_0

    .line 5933
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xef

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5934
    return v4

    .line 5935
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 5936
    :pswitch_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "bBVjASvxGIVEucqGKWBeREj1nHP5tR7K"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "afA0CT9VteApb4cGitBpBAxXonSmRtRK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 5937
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 5938
    :pswitch_4
    return v4

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static A03(JLjava/util/List;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;>;)I"
        }
    .end annotation

    .line 5939
    .local p1, "sortedCueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;>;"
    const/4 v3, 0x0

    .line 5940
    .local v0, "insertionIndex":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 5941
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "L6yhcoI2CoUL0EEbj8PtMmDYbUY1DBiP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_0

    .line 5942
    return v4

    .line 5943
    :cond_0
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v0, v1, p0

    if-gez v0, :cond_3

    .line 5944
    add-int/lit8 v3, v4, 0x1

    .line 5945
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5946
    if-nez v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5947
    :goto_1
    invoke-interface {p3, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5948
    return v3

    .line 5949
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 5950
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(Ljava/lang/String;)J
    .locals 8

    .line 5951
    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5952
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5953
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 5954
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v4, 0x3c

    mul-long/2addr v7, v4

    mul-long/2addr v7, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v7, v2

    .line 5955
    .local v1, "timestampUs":J
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v2

    add-long/2addr v7, v0

    .line 5956
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    add-long/2addr v7, v0

    .line 5957
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x2710

    mul-long/2addr v2, v0

    add-long/2addr v7, v2

    .line 5958
    return-wide v7
.end method

.method public static A05(I)Landroid/text/Layout$Alignment;
    .locals 5

    .line 5959
    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    .line 5960
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xef

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5961
    return-object v4

    .line 5962
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 5963
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 5964
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    .line 5965
    :pswitch_4
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static A06(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KC;Lcom/facebook/ads/redexgen/X/K9;FF)Lcom/facebook/ads/redexgen/X/pT;
    .locals 10

    .line 5966
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5967
    .local v0, "spannableText":Landroid/text/SpannableString;
    new-instance v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v4

    .line 5968
    .local v1, "cue":Lcom/facebook/ads/redexgen/X/3o;
    const p0, -0x800001

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 5969
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A04:Ljava/lang/Integer;

    const/16 v6, 0x21

    if-eqz v0, :cond_0

    .line 5970
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A04:Ljava/lang/Integer;

    .line 5971
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5972
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 5973
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5974
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A02:I

    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A03:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5975
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A03:Ljava/lang/Integer;

    .line 5976
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 5977
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 5978
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5979
    :cond_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A00:F

    const/4 v7, 0x1

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_3

    cmpl-float v9, p4, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "hamZaHHK5iJw0vPowwB4Xi3W6GQULYkl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "AtQHcqF1nJuVU9oQ1sBsNKUnqzSBt8ub"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v9, :cond_3

    .line 5980
    iget v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A00:F

    div-float/2addr v0, p4

    invoke-virtual {v4, v0, v7}, Lcom/facebook/ads/redexgen/X/3o;->A08(FI)Lcom/facebook/ads/redexgen/X/3o;

    .line 5981
    :cond_3
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A06:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A07:Z

    if-eqz v0, :cond_a

    .line 5982
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 5983
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 5984
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5985
    :cond_4
    :goto_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A09:Z

    if-eqz v0, :cond_5

    .line 5986
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 5987
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 5988
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5989
    :cond_5
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A08:Z

    if-eqz v0, :cond_6

    .line 5990
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 5991
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 5992
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5993
    :cond_6
    iget v6, p2, Lcom/facebook/ads/redexgen/X/K9;->A00:I

    const/4 v5, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "i2mc5u7bs2HiiqvdNfcyeR2hNUTbHa8c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v6, v5, :cond_8

    .line 5994
    iget v2, p2, Lcom/facebook/ads/redexgen/X/K9;->A00:I

    .line 5995
    .local v4, "alignment":I
    .restart local v4    # "alignment":I
    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/1R;->A05(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    .line 5996
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/1R;->A02(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    .line 5997
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/1R;->A01(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    .line 5998
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/K9;->A01:Landroid/graphics/PointF;

    if-eqz v0, :cond_7

    cmpl-float v0, p4, p0

    if-eqz v0, :cond_7

    cmpl-float v0, p3, p0

    if-eqz v0, :cond_7

    .line 5999
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/K9;->A01:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p3

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    .line 6000
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/K9;->A01:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p4

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    .line 6001
    :goto_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    return-object v0

    .line 6002
    :cond_7
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3o;->A01()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1R;->A00(I)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    .line 6003
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/3o;->A00()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1R;->A00(I)F

    move-result v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    goto :goto_2

    .line 6004
    .end local v4    # "alignment":I
    :cond_8
    if-eqz p1, :cond_9

    .line 6005
    iget v2, p1, Lcom/facebook/ads/redexgen/X/KC;->A01:I

    .restart local v4    # "alignment":I
    goto :goto_1

    .line 6006
    .end local v4    # "alignment":I
    :cond_9
    const/4 v2, -0x1

    goto :goto_1

    .line 6007
    :cond_a
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A06:Z

    if-eqz v0, :cond_b

    .line 6008
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 6009
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 6010
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 6011
    :cond_b
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/KC;->A07:Z

    if-eqz v0, :cond_4

    .line 6012
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 6013
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 6014
    invoke-virtual {v5, v1, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4v;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/KC;",
            ">;"
        }
    .end annotation

    .line 6015
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6016
    .local v0, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ssa/SsaStyle;>;"
    const/4 v4, 0x0

    .line 6017
    .local v1, "formatInfo":Lcom/facebook/ads/redexgen/X/K8;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v6

    .local v3, "currentLine":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 6018
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0B()I

    move-result v1

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_4

    .line 6019
    :cond_1
    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6020
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/K8;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K8;

    move-result-object v4

    goto :goto_0

    .line 6021
    :cond_2
    const/16 v2, 0xe9

    const/4 v1, 0x6

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6022
    if-nez v4, :cond_3

    .line 6023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v1, 0x2e

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6024
    goto :goto_0

    .line 6025
    :cond_3
    invoke-static {v6, v4}, Lcom/facebook/ads/redexgen/X/KC;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K8;)Lcom/facebook/ads/redexgen/X/KC;

    move-result-object v1

    .line 6026
    .local v2, "style":Lcom/facebook/ads/redexgen/X/KC;
    if-eqz v1, :cond_0

    .line 6027
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/KC;->A05:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6028
    :cond_4
    return-object v5
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x163

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1R;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        0x27t
        0x30t
        0x35t
        0x27t
        0x53t
        0x6bt
        0x24t
        0x26t
        0x35t
        0x26t
        0x30t
        0x27t
        0x53t
        0x6bt
        0x24t
        0x26t
        0x35t
        0x27t
        0x53t
        0x6bt
        0x24t
        0x26t
        0x54t
        0x35t
        0x21t
        0x52t
        0x27t
        0x53t
        0x6bt
        0x24t
        0x26t
        0x4bt
        0x23t
        0x34t
        0x19t
        0x11t
        0x1ct
        0x1ft
        0x17t
        0x5t
        0x15t
        0x4at
        0x4bt
        0x62t
        0x7ft
        0x60t
        0x6ct
        0x79t
        0x37t
        0x65t
        0x5dt
        0x5ft
        0x46t
        0x46t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x11t
        0x65t
        0x42t
        0x4ft
        0x5at
        0x53t
        0xct
        0x11t
        0x16t
        0x5at
        0x5ft
        0x58t
        0x53t
        0x16t
        0x54t
        0x53t
        0x50t
        0x59t
        0x44t
        0x53t
        0x16t
        0x11t
        0x70t
        0x59t
        0x44t
        0x5bt
        0x57t
        0x42t
        0xct
        0x11t
        0x16t
        0x5at
        0x5ft
        0x58t
        0x53t
        0xct
        0x16t
        0x25t
        0x1dt
        0x1ft
        0x6t
        0x6t
        0x1ft
        0x18t
        0x11t
        0x56t
        0x12t
        0x1ft
        0x17t
        0x1at
        0x19t
        0x11t
        0x3t
        0x13t
        0x56t
        0x1at
        0x1ft
        0x18t
        0x13t
        0x56t
        0x14t
        0x13t
        0x10t
        0x19t
        0x4t
        0x13t
        0x56t
        0x15t
        0x19t
        0x1bt
        0x6t
        0x1at
        0x13t
        0x2t
        0x13t
        0x56t
        0x10t
        0x19t
        0x4t
        0x1bt
        0x17t
        0x2t
        0x4ct
        0x56t
        0x35t
        0xdt
        0xft
        0x16t
        0x16t
        0xft
        0x8t
        0x1t
        0x46t
        0x2t
        0xft
        0x7t
        0xat
        0x9t
        0x1t
        0x13t
        0x3t
        0x46t
        0xat
        0xft
        0x8t
        0x3t
        0x46t
        0x11t
        0xft
        0x12t
        0xet
        0x46t
        0x0t
        0x3t
        0x11t
        0x3t
        0x14t
        0x46t
        0x5t
        0x9t
        0xat
        0x13t
        0xbt
        0x8t
        0x15t
        0x46t
        0x12t
        0xet
        0x7t
        0x8t
        0x46t
        0x0t
        0x9t
        0x14t
        0xbt
        0x7t
        0x12t
        0x5ct
        0x46t
        0x42t
        0x7at
        0x78t
        0x61t
        0x61t
        0x78t
        0x7ft
        0x76t
        0x31t
        0x78t
        0x7ft
        0x67t
        0x70t
        0x7dt
        0x78t
        0x75t
        0x31t
        0x65t
        0x78t
        0x7ct
        0x78t
        0x7ft
        0x76t
        0x2bt
        0x31t
        0x65t
        0x45t
        0x57t
        0x72t
        0x53t
        0x55t
        0x59t
        0x52t
        0x53t
        0x44t
        0x24t
        0x3t
        0xet
        0x1bt
        0x12t
        0x4dt
        0x2dt
        0x16t
        0x13t
        0x16t
        0x17t
        0xft
        0x16t
        0x58t
        0x19t
        0x14t
        0x11t
        0x1ft
        0x16t
        0x15t
        0x1dt
        0x16t
        0xct
        0x42t
        0x58t
        0x28t
        0x36t
        0x5t
        0x16t
        0x1dt
        0x7t
        0x0t
        0x2et
        0x5et
        0x56t
        0x66t
        0x77t
        0x6ct
        0x75t
        0x71t
        0x25t
        0x4ct
        0x6bt
        0x63t
        0x6at
        0x58t
        0xdt
        0x0t
        0x62t
        0x76t
        0x5t
        0x22t
        0x2ft
        0x3at
        0x33t
        0x25t
        0xbt
        0x7ct
        0x71t
        0x13t
        0x7t
        0x74t
        0x53t
        0x5et
        0x4bt
        0x42t
        0x54t
        0x7at
        0x7t
        0x46t
        0x55t
        0x42t
        0x7t
        0x49t
        0x48t
        0x53t
        0x7t
        0x54t
        0x52t
        0x57t
        0x57t
        0x48t
        0x55t
        0x53t
        0x42t
        0x43t
        0x4bt
        0x46t
        0x24t
        0x3bt
        0x30t
        0x43t
        0x64t
        0x69t
        0x7ct
        0x75t
        0x63t
        0x4dt
        0x5ct
        0x4et
        0x5t
        0x31t
        0x6ct
        0x5et
        0x5t
        0x19t
        0x14t
        0xct
        0x7t
        0x10t
        0x6t
        0xdt
        0x5et
        0x42t
        0x4ft
        0x57t
        0x5ct
        0x4bt
        0x5dt
        0x57t
        -0x48t
        -0x26t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 4

    .line 6029
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v3

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 6030
    const/16 v2, 0x10a

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6031
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1R;->A0B(Lcom/facebook/ads/redexgen/X/4v;)V

    goto :goto_0

    .line 6032
    :cond_1
    const/16 v2, 0x13f

    const/16 v1, 0xc

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6033
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1R;->A08(Lcom/facebook/ads/redexgen/X/4v;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/util/Map;

    goto :goto_0

    .line 6034
    :cond_2
    const/16 v2, 0x117

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6035
    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x122

    const/16 v1, 0x1d

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6036
    :cond_3
    const/16 v2, 0x102

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6037
    return-void

    .line 6038
    :cond_4
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 8

    .line 6039
    :catch_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v3

    .local v1, "currentLine":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 6040
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0B()I

    move-result v1

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_5

    .line 6041
    :cond_0
    const/16 v2, 0x21

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6042
    .local v0, "infoNameAndValue":[Ljava/lang/String;
    array-length v1, v3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 6043
    :cond_1
    const/4 v6, 0x0

    aget-object v0, v3, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "TxjPtR6Me2tOCH56RvBuXVxOpTFPkhKs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "CGC80sv4xmOos6ad3yBESqJRjeXwJGgE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_2
    const/4 v6, -0x1

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v7, 0x159

    const/16 v6, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "y7TEYh3wOWaLWgkmzZBlA5JQj6rjOZZg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "3gq1Vhf6xja9YBkNvRBFSeYMsj86kNRf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x1f

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1R;->A06:[Ljava/lang/String;

    const-string v1, "57knmpqjR0Ls81goizN6npBH6l"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v0, 0x2a

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_1
    const/16 v2, 0x151

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6044
    :pswitch_2
    :try_start_0
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A00:F

    goto/16 :goto_0

    .line 6045
    :pswitch_3
    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A01:F

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6046
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6047
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x70092d0c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 6048
    .local p0, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;>;"
    .local p1, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A04:Z

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1R;->A03:Lcom/facebook/ads/redexgen/X/K7;

    .line 6049
    .local v0, "format":Lcom/facebook/ads/redexgen/X/K7;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0T()Ljava/lang/String;

    move-result-object v5

    .local v2, "currentLine":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 6050
    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6051
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/K7;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v4

    goto :goto_0

    .line 6052
    :cond_1
    const/16 v2, 0x22

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6053
    if-nez v4, :cond_2

    .line 6054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x60

    const/16 v1, 0x2f

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6055
    goto :goto_0

    .line 6056
    :cond_2
    invoke-direct {p0, v5, v4, p2, p3}, Lcom/facebook/ads/redexgen/X/1R;->A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 6057
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 6058
    :cond_4
    return-void
.end method

.method private A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/K7;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 6059
    .local p8, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;>;"
    .local p9, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v9, p0

    const/16 v2, 0x22

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 6060
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/K7;->A01:I

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 6061
    .local v5, "lineValues":[Ljava/lang/String;
    array-length v5, v6

    iget v4, p2, Lcom/facebook/ads/redexgen/X/K7;->A01:I

    const/16 v2, 0xdf

    const/16 v1, 0xa

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eq v5, v4, :cond_0

    .line 6062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8f

    const/16 v1, 0x37

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6063
    return-void

    .line 6064
    :cond_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/K7;->A02:I

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1R;->A04(Ljava/lang/String;)J

    move-result-wide v4

    .line 6065
    .local v6, "startTimeUs":J
    const/16 v2, 0xc6

    const/16 v1, 0x19

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v7

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v10

    if-nez v0, :cond_1

    .line 6066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6067
    return-void

    .line 6068
    :cond_1
    iget v0, p2, Lcom/facebook/ads/redexgen/X/K7;->A00:I

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1R;->A04(Ljava/lang/String;)J

    move-result-wide v0

    .line 6069
    .local v12, "endTimeUs":J
    cmp-long v2, v0, v10

    if-nez v2, :cond_2

    .line 6070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 6071
    return-void

    .line 6072
    :cond_2
    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget v3, p2, Lcom/facebook/ads/redexgen/X/K7;->A03:I

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    .line 6073
    iget-object v3, v9, Lcom/facebook/ads/redexgen/X/1R;->A02:Ljava/util/Map;

    iget v2, p2, Lcom/facebook/ads/redexgen/X/K7;->A03:I

    aget-object v2, v6, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/KC;

    .line 6074
    .local v8, "style":Lcom/facebook/ads/redexgen/X/KC;
    :goto_0
    iget v2, p2, Lcom/facebook/ads/redexgen/X/K7;->A04:I

    aget-object v2, v6, v2

    .line 6075
    .local v9, "rawText":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/K9;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K9;

    move-result-object v10

    .line 6076
    .local v10, "styleOverrides":Lcom/facebook/ads/redexgen/X/K9;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/K9;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 6077
    const/16 v6, 0x14b

    const/4 v3, 0x2

    const/4 v2, 0x4

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x5b

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 6078
    const/16 v6, 0x14f

    const/4 v3, 0x2

    const/16 v2, 0x34

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 6079
    const/16 v6, 0x14d

    const/4 v3, 0x2

    const/16 v2, 0x5d

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x161

    const/4 v3, 0x2

    const/16 v2, 0x7e

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A07(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 6080
    .local v11, "text":Ljava/lang/String;
    iget v3, v9, Lcom/facebook/ads/redexgen/X/1R;->A01:F

    iget v2, v9, Lcom/facebook/ads/redexgen/X/1R;->A00:F

    invoke-static {v6, v8, v10, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A06(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KC;Lcom/facebook/ads/redexgen/X/K9;FF)Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v3

    .line 6081
    .local p1, "cue":Lcom/facebook/ads/redexgen/X/pT;
    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/ads/redexgen/X/1R;->A03(JLjava/util/List;Ljava/util/List;)I

    move-result v2

    .line 6082
    .local p2, "startTimeIndex":I
    invoke-static {v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/1R;->A03(JLjava/util/List;Ljava/util/List;)I

    move-result v1

    .line 6083
    .local v0, "endTimeIndex":I
    .local v1, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 6084
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "endTimeIndex":I
    .local p4, "endTimeIndex":I
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6085
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6086
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 6087
    .end local v1    # "i":I
    .end local p4    # "endTimeIndex":I
    .restart local v0    # "endTimeIndex":I
    :cond_4
    return-void
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;
    .locals 4

    .line 6088
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6089
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6090
    .local v1, "cueTimesUs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/4v;-><init>([BI)V

    .line 6091
    .local v2, "parsableData":Lcom/facebook/ads/redexgen/X/4v;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1R;->A04:Z

    if-nez v0, :cond_0

    .line 6092
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/1R;->A0A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 6093
    :cond_0
    invoke-direct {p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/1R;->A0C(Lcom/facebook/ads/redexgen/X/4v;Ljava/util/List;Ljava/util/List;)V

    .line 6094
    new-instance v0, Lcom/facebook/ads/redexgen/X/le;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/le;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
