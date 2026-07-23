.class public final Lcom/facebook/ads/redexgen/X/J7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/J1;

.field public A05:Lcom/facebook/ads/redexgen/X/JO;

.field public final A06:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A07:Lcom/facebook/ads/redexgen/X/JQ;

.field public final A08:Lcom/facebook/ads/redexgen/X/4v;

.field public final A09:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 818
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EJzHBf6C0sknf46Vq1Osr72lZWU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EzVPMe4nRAbvxSng0PXVwtyqLeoR1KIv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OkBxNGbCc3SGP6NNAhHfxcRtiUQBpmsu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1fihPQnAv3tt3xF1xxV2XjfJNe5jiXUE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EaQIZLU4UTAcxpaH6Zb3hTUPzu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nXVDjS3P8WK4na35on8K5ox1mEuGJ9Tn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "34qesDVsFPLU35m5e8V9GlfuLx1oAXXP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IwUkif7926Fg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/J7;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 2

    .line 42175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42176
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    .line 42177
    new-instance v0, Lcom/facebook/ads/redexgen/X/JQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    .line 42178
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A09:Lcom/facebook/ads/redexgen/X/4v;

    .line 42179
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A08:Lcom/facebook/ads/redexgen/X/4v;

    .line 42180
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/JP;
    .locals 2

    .line 42181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A06:Lcom/facebook/ads/redexgen/X/J1;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/J1;->A02:I

    .line 42182
    .local v0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A07:Lcom/facebook/ads/redexgen/X/JP;

    if-eqz v0, :cond_1

    .line 42183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A07:Lcom/facebook/ads/redexgen/X/JP;

    .line 42184
    .local v1, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A03:Z

    if-eqz v0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 42185
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A05:Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/JO;->A00(I)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/J7;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 42186
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J7;->A00()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object p0

    return-object p0
.end method

.method private A02()V
    .locals 3

    .line 42187
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J7;->A00()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    .line 42188
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    if-nez v1, :cond_0

    .line 42189
    return-void

    .line 42190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42191
    .local v1, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/4v;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    if-eqz v0, :cond_1

    .line 42192
    iget v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42193
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42194
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42195
    :cond_2
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/J7;)V
    .locals 0

    .line 42196
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J7;->A02()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 6

    .line 42197
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/J7;->A00()Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    .line 42198
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 42199
    return v4

    .line 42200
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    if-eqz v0, :cond_2

    .line 42201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42202
    .local v2, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/JP;->A00:I

    .line 42203
    .local v3, "vectorSize":I
    .local v2, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    .local v3, "vectorSize":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/JQ;->A06(I)Z

    move-result v5

    .line 42204
    .local v4, "subsampleEncryption":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A09:Lcom/facebook/ads/redexgen/X/4v;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/4v;->A00:[B

    if-eqz v5, :cond_1

    const/16 v1, 0x80

    :goto_1
    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    .line 42205
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A09:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42206
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/J7;->A09:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v1, 0x1

    invoke-interface {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 42207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 42208
    if-nez v5, :cond_4

    .line 42209
    add-int/lit8 v3, v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/J7;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/J7;->A0A:[Ljava/lang/String;

    const-string v1, "cKav7mEAu9tQ2Y9RA5SJHOCCBpQ48rqR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 42210
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 42211
    .end local v2    # "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    .end local v3    # "vectorSize":I
    :cond_2
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/JP;->A04:[B

    .line 42212
    .local v2, "initVectorData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A08:Lcom/facebook/ads/redexgen/X/4v;

    array-length v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0j([BI)V

    .line 42213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A08:Lcom/facebook/ads/redexgen/X/4v;

    .line 42214
    .local v3, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4v;
    array-length v3, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42215
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0H:Lcom/facebook/ads/redexgen/X/4v;

    .line 42216
    .local v1, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/4v;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v1

    .line 42217
    .local v5, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42218
    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    .line 42219
    .local p0, "subsampleDataLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 42220
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A05()V
    .locals 1

    .line 42221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A01()V

    .line 42222
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    .line 42223
    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A02:I

    .line 42224
    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    .line 42225
    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A03:I

    .line 42226
    return-void
.end method

.method public final A06(J)V
    .locals 4

    .line 42227
    iget v3, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    .line 42228
    .local v0, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    .line 42229
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/JQ;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-gez v0, :cond_1

    .line 42230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0G:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 42231
    iput v3, p0, Lcom/facebook/ads/redexgen/X/J7;->A03:I

    .line 42232
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42233
    :cond_1
    return-void
.end method

.method public final A07(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)V
    .locals 4

    .line 42234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A05:Lcom/facebook/ads/redexgen/X/JO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JQ;->A06:Lcom/facebook/ads/redexgen/X/J1;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/J1;->A02:I

    .line 42235
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JO;->A00(I)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 42236
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JP;->A02:Ljava/lang/String;

    .line 42237
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A05:Lcom/facebook/ads/redexgen/X/JO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/qI;->A09(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 42238
    return-void

    .line 42239
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/JO;Lcom/facebook/ads/redexgen/X/J1;)V
    .locals 2

    .line 42240
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A05:Lcom/facebook/ads/redexgen/X/JO;

    .line 42241
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A04:Lcom/facebook/ads/redexgen/X/J1;

    .line 42242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 42243
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/J7;->A05()V

    .line 42244
    return-void
.end method

.method public final A09()Z
    .locals 4

    .line 42245
    iget v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A01:I

    .line 42246
    iget v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    .line 42247
    iget v2, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JQ;->A0C:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A02:I

    aget v0, v1, v0

    if-ne v2, v0, :cond_0

    .line 42248
    iget v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A02:I

    .line 42249
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J7;->A00:I

    .line 42250
    return v0

    .line 42251
    :cond_0
    return v3
.end method
