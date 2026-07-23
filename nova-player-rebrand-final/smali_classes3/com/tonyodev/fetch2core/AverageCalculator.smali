.class public final Lcom/tonyodev/fetch2core/AverageCalculator;
.super Ljava/lang/Object;
.source "AverageCalculator.kt"


# instance fields
.field private final defaultIndexPosition:I

.field private final defaultValueListSize:I

.field private final discardLimit:I

.field private endIndex:I

.field private startIndex:I

.field private valueList:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    const/16 p1, 0x10

    .line 12
    iput p1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->defaultValueListSize:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->defaultIndexPosition:I

    .line 16
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    .line 17
    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    .line 18
    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    return-void
.end method

.method private final expandValueList()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    .line 41
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    iget v3, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    .line 44
    iput v4, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 45
    iput v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    return-void
.end method

.method private final getDenominator(I)D
    .locals 5

    .line 0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-gt v2, p1, :cond_0

    :goto_0
    int-to-double v3, v2

    add-double/2addr v0, v3

    if-eq v2, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static synthetic getMovingAverageWithWeightOnRecentValues$default(Lcom/tonyodev/fetch2core/AverageCalculator;IILjava/lang/Object;)D
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result p1

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getMovingAverageWithWeightOnRecentValues(I)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final add(D)V
    .locals 2

    .line 25
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->discardLimit:I

    if-ne v0, v1, :cond_0

    .line 26
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    .line 28
    :cond_0
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    iget-object v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->expandValueList()V

    .line 31
    :cond_1
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    aput-wide p1, v1, v0

    return-void
.end method

.method public final count()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    iget v1, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getMovingAverageWithWeightOnRecentValues(I)D
    .locals 11

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/AverageCalculator;->count()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lcom/tonyodev/fetch2core/AverageCalculator;->getDenominator(I)D

    move-result-wide v0

    .line 127
    iget v2, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->endIndex:I

    add-int/lit8 v3, p1, -0x1

    sub-int v3, v2, v3

    const-wide/16 v4, 0x0

    if-gt v3, v2, :cond_0

    .line 128
    :goto_0
    iget-object v6, p0, Lcom/tonyodev/fetch2core/AverageCalculator;->valueList:[D

    aget-wide v7, v6, v2

    int-to-double v9, p1

    div-double/2addr v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    add-int/lit8 p1, p1, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v4

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inclusionCount cannot be greater than the inserted value count."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inclusionCount cannot be less than 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
