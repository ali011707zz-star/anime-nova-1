.class public final Lcom/facebook/ads/redexgen/X/lA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L7;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/HA;

.field public A02:Lcom/facebook/ads/redexgen/X/lC;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/L7;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/4v;

.field public final A09:Lcom/facebook/ads/redexgen/X/53;

.field public final A0A:Lcom/facebook/ads/redexgen/X/L6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3179
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UBvRkgXOGDkhiRviOullp8V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VkNaXMTzU8N2w"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EmncOItxREzVuvRcJiesLUTUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GKNHQwhZeE13dvoU8lLSXwuEJRZ0Rb8T"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UfDFEQBLtd8kFCM7fNQpR1e2paOBi7mP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RVi2VPuM0SECIbGMRSZvlBLvqxfM7S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lPCpjqdMUX8JsRnbL9v7kcIYKByBL6xe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JprIbG5eTccKgwX6h6kDKt0luN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lB;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lA;->A0C:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92691
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lA;-><init>(Lcom/facebook/ads/redexgen/X/53;)V

    .line 92692
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/53;)V
    .locals 2

    .line 92693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92694
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lA;->A09:Lcom/facebook/ads/redexgen/X/53;

    .line 92695
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    .line 92696
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A07:Landroid/util/SparseArray;

    .line 92697
    new-instance v0, Lcom/facebook/ads/redexgen/X/L6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/L6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    .line 92698
    return-void
.end method

.method private A00(J)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 92699
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A06:Z

    if-nez v0, :cond_0

    .line 92700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A06:Z

    .line 92701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A0C()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 92702
    new-instance v1, Lcom/facebook/ads/redexgen/X/lC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    .line 92703
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A0D()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    .line 92704
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A0C()J

    move-result-wide v3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/lC;-><init>(Lcom/facebook/ads/redexgen/X/53;JJ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    .line 92705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lA;->A01:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A07()Lcom/facebook/ads/redexgen/X/n0;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 92706
    :cond_0
    :goto_0
    return-void

    .line 92707
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lA;->A01:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A0C()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    goto :goto_0
.end method

.method public static synthetic A01()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 92708
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lA;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 0

    .line 92709
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lA;->A01:Lcom/facebook/ads/redexgen/X/HA;

    .line 92710
    return-void
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92711
    move-object v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A01:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92712
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v0

    .line 92713
    .local v3, "inputLength":J
    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v9, -0x1

    cmp-long v2, v0, v9

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 92714
    .local v9, "canReadDuration":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/L6;->A0E()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92715
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A0A:Lcom/facebook/ads/redexgen/X/L6;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/L6;->A0B(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 92716
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 92717
    :cond_1
    invoke-direct {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/lA;->A00(J)V

    .line 92718
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    if-eqz v2, :cond_2

    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/H2;->A09()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92719
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/H2;->A06(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 92720
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 92721
    cmp-long v2, v0, v9

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8i()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 92722
    .local v10, "peekBytesLeft":J
    :goto_1
    const/4 v6, -0x1

    cmp-long v2, v0, v9

    if-eqz v2, :cond_4

    const-wide/16 v4, 0x4

    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    .line 92723
    return v6

    .line 92724
    :cond_3
    move-wide v0, v9

    goto :goto_1

    .line 92725
    :cond_4
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v3, v0, v7}, Lcom/facebook/ads/redexgen/X/ms;->AGu([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 92726
    return v6

    .line 92727
    :cond_5
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92728
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v4

    .line 92729
    .local v7, "nextStartCode":I
    const/16 v0, 0x1b9

    if-ne v4, v0, :cond_6

    .line 92730
    return v6

    .line 92731
    :cond_6
    const/16 v5, 0x1ba

    sget-object v1, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const-string v1, "kMhOTVhRWN36SIdb7fVpbVP8KQK8iP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "K6CIMfQf5fCJv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_7

    .line 92732
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/16 v0, 0xa

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92733
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92734
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 92735
    .local v5, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 92736
    return v3

    .line 92737
    .end local v5    # "packStuffingLength":I
    :cond_7
    const/16 v0, 0x1bb

    const/4 v6, 0x2

    if-ne v4, v0, :cond_8

    .line 92738
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v6}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92739
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92740
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    .line 92741
    .local v5, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 92742
    return v3

    .line 92743
    .end local v5    # "systemHeaderLength":I
    :cond_8
    and-int/lit16 v0, v4, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v7, :cond_9

    .line 92744
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 92745
    return v3

    .line 92746
    :cond_9
    and-int/lit16 v5, v4, 0xff

    .line 92747
    .local v8, "streamId":I
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/L7;

    .line 92748
    .local p2, "payloadReader":Lcom/facebook/ads/redexgen/X/L7;
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A03:Z

    if-nez v0, :cond_c

    .line 92749
    if-nez v4, :cond_b

    .line 92750
    const/4 v3, 0x0

    .line 92751
    .local p3, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/Kv;
    const/16 v0, 0xbd

    if-ne v5, v0, :cond_f

    .line 92752
    new-instance v3, Lcom/facebook/ads/redexgen/X/lW;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/lW;-><init>()V

    .line 92753
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/lA;->A04:Z

    .line 92754
    .end local v7    # "nextStartCode":I
    .local p5, "nextStartCode":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A00:J

    .line 92755
    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    .line 92756
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/LG;-><init>(II)V

    .line 92757
    .local v6, "idGenerator":Lcom/facebook/ads/redexgen/X/LG;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A01:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Kv;->A5c(Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V

    .line 92758
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A09:Lcom/facebook/ads/redexgen/X/53;

    new-instance v4, Lcom/facebook/ads/redexgen/X/L7;

    invoke-direct {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/L7;-><init>(Lcom/facebook/ads/redexgen/X/Kv;Lcom/facebook/ads/redexgen/X/53;)V

    .line 92759
    .end local p2    # "payloadReader":Lcom/facebook/ads/redexgen/X/L7;
    .local v7, "payloadReader":Lcom/facebook/ads/redexgen/X/L7;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92760
    .end local v7    # "payloadReader":Lcom/facebook/ads/redexgen/X/L7;
    .restart local p5
    :cond_b
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A04:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A05:Z

    if-eqz v0, :cond_e

    .line 92761
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/lA;->A00:J

    const-wide/16 v9, 0x2000

    add-long/2addr v1, v9

    .line 92762
    .local v6, "maxSearchPosition":J
    :goto_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v9

    cmp-long v0, v9, v1

    if-lez v0, :cond_c

    .line 92763
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/lA;->A03:Z

    .line 92764
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A01:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 92765
    .end local v7
    .restart local p5
    :cond_c
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v6}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92766
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92767
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    .line 92768
    .local v5, "payloadLength":I
    add-int/lit8 v2, v0, 0x6

    .line 92769
    .local v6, "pesLength":I
    if-nez v4, :cond_d

    .line 92770
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 92771
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 92772
    :cond_d
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 92773
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 92774
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 92775
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/L7;->A03(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 92776
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A08:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    goto :goto_4

    .line 92777
    :cond_e
    const-wide/32 v1, 0x100000

    goto :goto_3

    .line 92778
    .end local p5
    .restart local v7    # "payloadReader":Lcom/facebook/ads/redexgen/X/L7;
    .end local v7    # "payloadReader":Lcom/facebook/ads/redexgen/X/L7;
    .restart local p5
    :cond_f
    and-int/lit16 v10, v5, 0xe0

    const/16 v9, 0xc0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_10

    sget-object v2, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const-string v1, "MD0211Yr4bYXM5L9ZkPBjN7rOQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v10, v9, :cond_11

    .line 92779
    :goto_5
    new-instance v3, Lcom/facebook/ads/redexgen/X/lG;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/lG;-><init>()V

    .line 92780
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/lA;->A04:Z

    .line 92781
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A00:J

    goto/16 :goto_2

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const-string v1, "PIHtVurnoe8IajroMJlyufhIBiisymoK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "tbo4qyhyaN86Rqnk6vLIVirgmw8EdsC9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v10, v9, :cond_11

    goto :goto_5

    .line 92782
    :cond_11
    and-int/lit16 v1, v5, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_a

    .line 92783
    new-instance v3, Lcom/facebook/ads/redexgen/X/lM;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/lM;-><init>()V

    .line 92784
    iput-boolean v7, v8, Lcom/facebook/ads/redexgen/X/lA;->A05:Z

    .line 92785
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/lA;->A00:J

    goto/16 :goto_2

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AHb()V
    .locals 0

    .line 92786
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 6

    .line 92787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A09:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A04()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 92788
    .local v0, "resetTimestampAdjuster":Z
    :goto_0
    if-nez v0, :cond_1

    .line 92789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A09:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A02()J

    move-result-wide v3

    .line 92790
    .local p0, "adjusterFirstSampleTimestampUs":J
    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    cmp-long v0, v3, p3

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    move v0, v5

    .line 92791
    .end local p0    # "adjusterFirstSampleTimestampUs":J
    :cond_1
    if-eqz v0, :cond_2

    .line 92792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A09:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/53;->A07(J)V

    .line 92793
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    if-eqz v0, :cond_3

    .line 92794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A02:Lcom/facebook/ads/redexgen/X/lC;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/H2;->A08(J)V

    .line 92795
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 92796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lA;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/L7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L7;->A02()V

    .line 92797
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92798
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 92799
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92800
    const/16 v0, 0xe

    new-array v5, v0, [B

    .line 92801
    .local v1, "scratch":[B
    const/4 v4, 0x0

    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92802
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v3, 0x1

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v8, 0x2

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x8

    shl-int/2addr v0, v6

    or-int/2addr v1, v0

    const/4 v7, 0x3

    aget-byte v0, v5, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_0

    .line 92803
    return v4

    .line 92804
    :cond_0
    const/4 v2, 0x4

    aget-byte v0, v5, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 92805
    return v4

    .line 92806
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v5, v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    .line 92807
    return v4

    .line 92808
    :cond_2
    aget-byte v0, v5, v6

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    .line 92809
    return v4

    .line 92810
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 92811
    return v4

    .line 92812
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v5, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    .line 92813
    return v4

    .line 92814
    :cond_5
    const/16 v0, 0xd

    aget-byte v6, v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/lA;->A0B:[Ljava/lang/String;

    const-string v1, "VV5ZPjEmtEUa5x1ycfEwWXr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v6, 0x7

    .line 92815
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->A47(I)V

    .line 92816
    invoke-interface {p1, v5, v4, v7}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 92817
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v3, v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
