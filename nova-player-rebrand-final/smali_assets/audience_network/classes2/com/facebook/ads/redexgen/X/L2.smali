.class public final Lcom/facebook/ads/redexgen/X/L2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L1;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/L1;

.field public A07:Lcom/facebook/ads/redexgen/X/L1;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:[B

.field public final A0C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/HQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/HR;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/HU;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 964
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PiFB59Vxde45j8XGh3VNLS0bXquL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eCGnEp7n3q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QH0EN4bfbiXOmvaYxmEgWcgYRTVGFgtW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ynU2FJVvbbIz4lLWIxM7HwzaaEzIs2yM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nKAZbJPu58l8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2xLWRKjlXe7o2y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tMbtJGMRwKJD523"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;ZZ)V
    .locals 3

    .line 49015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49016
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L2;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    .line 49017
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/L2;->A0G:Z

    .line 49018
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/L2;->A0H:Z

    .line 49019
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0D:Landroid/util/SparseArray;

    .line 49020
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0C:Landroid/util/SparseArray;

    .line 49021
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/L1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/L1;-><init>(Lcom/facebook/ads/redexgen/X/L0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A06:Lcom/facebook/ads/redexgen/X/L1;

    .line 49022
    new-instance v0, Lcom/facebook/ads/redexgen/X/L1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/L1;-><init>(Lcom/facebook/ads/redexgen/X/L0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    .line 49023
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    .line 49024
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/HU;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/HU;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    .line 49025
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L2;->A01()V

    .line 49026
    return-void
.end method

.method private A00(I)V
    .locals 8

    .line 49027
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/L2;->A05:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 49028
    return-void

    .line 49029
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L2;->A0A:Z

    .line 49030
    .local p0, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/L2;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A04:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 49031
    .local v1, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A0F:Lcom/facebook/ads/redexgen/X/Hd;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/L2;->A05:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 49032
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 49033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A08:Z

    .line 49034
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A09:Z

    .line 49035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L1;->A02()V

    .line 49036
    return-void
.end method

.method public final A02(JIJ)V
    .locals 6

    .line 49037
    iput p3, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    .line 49038
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/L2;->A03:J

    .line 49039
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/L2;->A02:J

    .line 49040
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0G:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    if-eq v0, v5, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0H:Z

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    if-eq v0, v5, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 49041
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/L2;->A06:Lcom/facebook/ads/redexgen/X/L1;

    .line 49042
    .local v0, "newSliceHeader":Lcom/facebook/ads/redexgen/X/L1;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v1, "uj74NyijhUvg4q"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/L2;->A06:Lcom/facebook/ads/redexgen/X/L1;

    .line 49043
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    .line 49044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L1;->A02()V

    .line 49045
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    .line 49046
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/L2;->A08:Z

    .line 49047
    .end local v0    # "newSliceHeader":Lcom/facebook/ads/redexgen/X/L1;
    :cond_3
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/HQ;)V
    .locals 2

    .line 49048
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A0C:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/HQ;->A00:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49049
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/HR;)V
    .locals 2

    .line 49050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A0D:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/HR;->A09:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49051
    return-void
.end method

.method public final A05([BII)V
    .locals 22

    .line 49052
    move/from16 v5, p3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A08:Z

    if-nez v1, :cond_0

    .line 49053
    return-void

    .line 49054
    :cond_0
    move/from16 v6, p2

    sub-int/2addr v5, v6

    .line 49055
    .local v2, "readLength":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    array-length v2, v1

    iget v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    add-int/2addr v1, v5

    const/4 v4, 0x2

    if-ge v2, v1, :cond_1

    .line 49056
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    iget v7, v0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, v2, v1

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x7a

    if-eq v2, v1, :cond_5

    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v2, "fF62whIImPZuUxQ3wOrH7qahZ1W3GZDe"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    add-int/2addr v7, v5

    mul-int/lit8 v1, v7, 0x2

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    .line 49057
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    move-object/from16 v3, p1

    invoke-static {v3, v6, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49058
    iget v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    .line 49059
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A00:I

    const/4 v2, 0x0

    invoke-virtual {v5, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HU;->A08([BII)V

    .line 49060
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49061
    return-void

    .line 49062
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A06()V

    .line 49063
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v9

    .line 49064
    .local v3, "nalRefIdc":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 49065
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v1

    if-nez v1, :cond_3

    .line 49066
    return-void

    .line 49067
    :cond_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    .line 49068
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v1

    if-nez v1, :cond_4

    .line 49069
    return-void

    .line 49070
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v10

    .line 49071
    .local v4, "sliceType":I
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0H:Z

    if-nez v1, :cond_7

    .line 49072
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A08:Z

    .line 49073
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/L1;->A03(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49074
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v1, "L"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "t7NRPrzJk7qeXS0lN2m3lGyrxGU0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 49075
    :cond_7
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v1

    if-nez v1, :cond_8

    .line 49076
    return-void

    .line 49077
    :cond_8
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v12

    .line 49078
    .local v15, "picParameterSetId":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 49079
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A08:Z

    .line 49080
    return-void

    .line 49081
    :cond_9
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/HQ;

    .line 49082
    .local v14, "ppsData":Lcom/facebook/ads/redexgen/X/HQ;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0D:Landroid/util/SparseArray;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/HR;

    .line 49083
    .local v13, "spsData":Lcom/facebook/ads/redexgen/X/HR;
    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/HR;->A0D:Z

    if-eqz v2, :cond_b

    .line 49084
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 49085
    return-void

    .line 49086
    :cond_a
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/HU;->A07(I)V

    .line 49087
    :cond_b
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    iget v6, v8, Lcom/facebook/ads/redexgen/X/HR;->A02:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x52

    if-eq v3, v2, :cond_c

    sget-object v4, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v3, "Y"

    const/4 v2, 0x4

    aput-object v3, v4, v2

    const-string v3, "LBdvSwh0xb7fkSyUzFJrubBBNhQW"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 49088
    :goto_0
    return-void

    :cond_c
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    .line 49089
    :cond_d
    const/4 v13, 0x0

    .line 49090
    .local v5, "fieldPicFlag":Z
    const/4 v14, 0x0

    .line 49091
    .local v9, "bottomFieldFlagPresent":Z
    const/4 v15, 0x0

    .line 49092
    .local v10, "bottomFieldFlag":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HR;->A02:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v11

    .line 49093
    .local p2, "frameNum":I
    iget-boolean v3, v8, Lcom/facebook/ads/redexgen/X/HR;->A0C:Z

    const/4 v2, 0x1

    if-nez v3, :cond_10

    .line 49094
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 49095
    return-void

    .line 49096
    :cond_e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v13

    .line 49097
    if-eqz v13, :cond_12

    .line 49098
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 49099
    return-void

    .line 49100
    :cond_f
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A0A()Z

    move-result v15

    .line 49101
    const/4 v14, 0x1

    goto :goto_1

    .line 49102
    :cond_10
    sget-object v4, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0xa

    if-eq v4, v3, :cond_11

    sget-object v6, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v4, "9PoEa2ZU2Rc4Mb"

    const/4 v3, 0x6

    aput-object v4, v6, v3

    goto :goto_1

    :cond_11
    sget-object v6, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v4, "45zkVvkeN2w0fF"

    const/4 v3, 0x6

    aput-object v4, v6, v3

    goto :goto_1

    .line 49103
    :cond_12
    sget-object v4, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v4, v3

    const/16 v3, 0x1f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x52

    if-eq v4, v3, :cond_13

    sget-object v6, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v4, "3"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    const-string v4, "19iwLQZiC4kcbLDxX6EkwfmmLREP"

    const/4 v3, 0x0

    aput-object v4, v6, v3

    .line 49104
    .end local v9    # "bottomFieldFlagPresent":Z
    .end local v10    # "bottomFieldFlag":Z
    .local p3, "bottomFieldFlagPresent":Z
    .local p4, "bottomFieldFlag":Z
    :cond_13
    :goto_1
    iget v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    if-ne v3, v5, :cond_14

    const/16 v16, 0x1

    .line 49105
    .local v7, "idrPicFlag":Z
    :goto_2
    const/16 v17, 0x0

    .line 49106
    .local v9, "idrPicId":I
    if-eqz v16, :cond_16

    .line 49107
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v3

    if-nez v3, :cond_15

    .line 49108
    return-void

    .line 49109
    :cond_14
    const/16 v16, 0x0

    goto :goto_2

    .line 49110
    :cond_15
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HU;->A04()I

    move-result v17

    .line 49111
    .end local v9    # "idrPicId":I
    .local p5, "idrPicId":I
    :cond_16
    const/16 v18, 0x0

    .line 49112
    .local v9, "picOrderCntLsb":I
    const/16 v19, 0x0

    .line 49113
    .local v10, "deltaPicOrderCntBottom":I
    const/16 v20, 0x0

    .line 49114
    .local v11, "deltaPicOrderCnt0":I
    const/16 v21, 0x0

    .line 49115
    .local v16, "deltaPicOrderCnt1":I
    iget v3, v8, Lcom/facebook/ads/redexgen/X/HR;->A07:I

    if-nez v3, :cond_1a

    .line 49116
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HR;->A06:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 49117
    return-void

    .line 49118
    :cond_17
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/HR;->A06:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/HU;->A05(I)I

    move-result v18

    .line 49119
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/HQ;->A02:Z

    if-eqz v1, :cond_1c

    if-nez v13, :cond_1c

    .line 49120
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v1

    if-nez v1, :cond_18

    .line 49121
    return-void

    .line 49122
    :cond_18
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    move-result v19

    sget-object v2, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v2, v2, v1

    const/16 v1, 0x1f

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x52

    if-eq v2, v1, :cond_19

    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v2, "kr3yeibAy42hiyE0dA9TA4Dy6aRxjun2"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    goto :goto_3

    .line 49123
    :cond_19
    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v2, "MkKVWDrQaD"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    goto :goto_3

    .line 49124
    :cond_1a
    iget v3, v8, Lcom/facebook/ads/redexgen/X/HR;->A07:I

    if-ne v3, v2, :cond_1c

    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/HR;->A0B:Z

    if-nez v2, :cond_1c

    .line 49125
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 49126
    return-void

    .line 49127
    :cond_1b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    move-result v20

    .line 49128
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/HQ;->A02:Z

    if-eqz v1, :cond_1c

    if-nez v13, :cond_1c

    .line 49129
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A09()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 49130
    return-void

    .line 49131
    :cond_1c
    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v3, v1

    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_1d

    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v2, "lSna5RLd1h"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    goto :goto_3

    :cond_1d
    sget-object v3, Lcom/facebook/ads/redexgen/X/L2;->A0I:[Ljava/lang/String;

    const-string v2, "3KoChTLYrqIZNd"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    goto :goto_3

    .line 49132
    :cond_1e
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A0E:Lcom/facebook/ads/redexgen/X/HU;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HU;->A03()I

    move-result v21

    .line 49133
    .end local v9    # "picOrderCntLsb":I
    .end local v10    # "deltaPicOrderCntBottom":I
    .end local v11    # "deltaPicOrderCnt0":I
    .end local v16    # "deltaPicOrderCnt1":I
    .local v8, "picOrderCntLsb":I
    .local p6, "deltaPicOrderCntBottom":I
    .local p7, "deltaPicOrderCnt0":I
    .local p8, "deltaPicOrderCnt1":I
    :goto_3
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    .end local v13    # "spsData":Lcom/facebook/ads/redexgen/X/HR;
    .local p9, "spsData":Lcom/facebook/ads/redexgen/X/HR;
    .end local v14    # "ppsData":Lcom/facebook/ads/redexgen/X/HQ;
    .local p10, "ppsData":Lcom/facebook/ads/redexgen/X/HQ;
    .end local v15    # "picParameterSetId":I
    .local p11, "picParameterSetId":I
    invoke-virtual/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/L1;->A04(Lcom/facebook/ads/redexgen/X/HR;IIIIZZZZIIIII)V

    .line 49134
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/L2;->A08:Z

    .line 49135
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 49136
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0H:Z

    return v0
.end method

.method public final A07(JIZZ)Z
    .locals 5

    .line 49137
    iget v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    const/16 v0, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0H:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A06:Lcom/facebook/ads/redexgen/X/L1;

    .line 49138
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/L1;->A01(Lcom/facebook/ads/redexgen/X/L1;Lcom/facebook/ads/redexgen/X/L1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49139
    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A09:Z

    if-eqz v0, :cond_1

    .line 49140
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A02:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 49141
    .local v1, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/L2;->A00(I)V

    .line 49142
    .end local v1    # "nalUnitLength":I
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A04:J

    .line 49143
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A05:J

    .line 49144
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/L2;->A0A:Z

    .line 49145
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/L2;->A09:Z

    .line 49146
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A07:Lcom/facebook/ads/redexgen/X/L1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L1;->A05()Z

    move-result p5

    .line 49147
    .local v0, "treatIFrameAsKeyframe":Z
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/L2;->A0A:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    if-eqz p5, :cond_5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A01:I

    if-ne v0, v3, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/L2;->A0A:Z

    .line 49148
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L2;->A0A:Z

    return v0
.end method
