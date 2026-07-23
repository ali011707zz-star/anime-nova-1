.class public final Lcom/facebook/ads/redexgen/X/j9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/ImfSpecParser;",
        "",
        "<init>",
        "()V",
        "parseImfSpec",
        "",
        "Lcom/facebook/video/heroplayer/exocustom/ImfDataTrack;",
        "imfInlineSpec",
        "",
        "fbandroid.java.com.facebook.video.heroplayer.exocustom.exocustom"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:Lcom/facebook/ads/redexgen/X/j9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/j9;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/j9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/j9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/j9;->A01:Lcom/facebook/ads/redexgen/X/j9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/j9;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final A01(Ljava/lang/String;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/j8;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v2, 0x1d

    const/16 v1, 0xd

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 88123
    .local v1, "imfDataTracks":Ljava/util/List;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa9

    const/16 v1, 0x11

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 88124
    .local v2, "imfSpecJson":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v3, "i":I
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v11

    :goto_0
    if-ge v2, v11, :cond_1

    .line 88125
    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 88126
    .local v5, "imfTrack":Lorg/json/JSONObject;
    const/16 v4, 0xd

    const/16 v1, 0x9

    const/16 v0, 0x2a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 88127
    .local v6, "dataTrack":Lorg/json/JSONObject;
    const/16 v4, 0xc7

    const/16 v1, 0x9

    const/4 v0, 0x6

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 88128
    .local v7, "trackName":Ljava/lang/String;
    const/16 v4, 0xba

    const/16 v1, 0xd

    const/16 v0, 0x42

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88129
    .local v15, "trackDataJson":Lorg/json/JSONObject;
    const/16 v4, 0x8c

    const/16 v1, 0xb

    const/16 v0, 0x27

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88130
    .local v9, "stickerName":Ljava/lang/String;
    const/16 v4, 0x7e

    const/16 v1, 0xe

    const/16 v0, 0x2a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88131
    .local v8, "stickerAssetId":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/qY;->A06(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qY;->A06(Ljava/lang/Object;)V

    new-instance v10, Lcom/facebook/ads/redexgen/X/j7;

    invoke-direct {v10, v6, v0}, Lcom/facebook/ads/redexgen/X/j7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88132
    .local v14, "stickerTrackType":Lcom/facebook/ads/redexgen/X/j7;
    const/4 v4, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x3f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 88133
    .local v12, "dataSegments":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v10, "j":I
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    :goto_1
    if-ge v0, v8, :cond_0

    .line 88134
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 88135
    .local v11, "dataSegment":Lorg/json/JSONObject;
    const/16 v5, 0x97

    const/16 v4, 0x9

    const/16 v1, 0x7a

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v5

    .end local v2    # "imfSpecJson":Lorg/json/JSONArray;
    .local v16, "imfSpecJson":Lorg/json/JSONArray;
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const/16 v7, 0x75

    const/16 v4, 0x9

    const/16 v1, 0x7f

    invoke-static {v7, v4, v1}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const/16 v7, 0xa0

    const/16 v4, 0x9

    const/16 v1, 0x7c

    invoke-static {v7, v4, v1}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 88136
    .end local v10    # "j":I
    .end local v11    # "dataSegment":Lorg/json/JSONObject;
    .local v2, "j":I
    .local v5, "dataSegment":Lorg/json/JSONObject;
    .local v20, "imfTrack":Lorg/json/JSONObject;
    .local v10, "startTime":J
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .end local v6    # "dataTrack":Lorg/json/JSONObject;
    .local v18, "dataTrack":Lorg/json/JSONObject;
    const/16 v5, 0x16

    const/4 v4, 0x7

    const/16 v1, 0x5e

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 88137
    .end local v12    # "dataSegments":Lorg/json/JSONArray;
    .local v0, "dataSegments":Lorg/json/JSONArray;
    .local v12, "endTime":J
    .end local v0    # "dataSegments":Lorg/json/JSONArray;
    .local v19, "dataSegments":Lorg/json/JSONArray;
    const/16 v5, 0x66

    const/16 v4, 0xf

    const/16 v1, 0x4d

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88138
    .local v0, "segmentMetadata":Lorg/json/JSONObject;
    new-instance v7, Lcom/facebook/ads/redexgen/X/j8;

    .line 88139
    invoke-static/range {v25 .. v25}, Lcom/facebook/ads/redexgen/X/qY;->A06(Ljava/lang/Object;)V

    .line 88140
    new-instance v14, Lcom/facebook/ads/redexgen/X/j6;

    .line 88141
    const/16 v6, 0x45

    const/16 v5, 0x9

    const/16 v4, 0x76

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 88142
    const/16 v6, 0x4e

    const/16 v5, 0x9

    const/16 v4, 0x3d

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 88143
    const/16 v6, 0x38

    const/16 v5, 0xd

    const/16 v4, 0x43

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    .line 88144
    const/16 v6, 0x2a

    const/16 v5, 0xe

    const/16 v4, 0x23

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    .line 88145
    const/16 v6, 0x57

    const/16 v5, 0xf

    const/16 v4, 0x23

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/j9;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 88146
    invoke-direct/range {v14 .. v24}, Lcom/facebook/ads/redexgen/X/j6;-><init>(DDDDD)V

    .line 88147
    .end local v8    # "stickerAssetId":Ljava/lang/String;
    .local v4, "stickerAssetId":Ljava/lang/String;
    .end local v9    # "stickerName":Ljava/lang/String;
    .local v21, "stickerName":Ljava/lang/String;
    .end local v15    # "trackDataJson":Lorg/json/JSONObject;
    .local v22, "trackDataJson":Lorg/json/JSONObject;
    move-object/from16 v24, v7

    move-object/from16 v30, v10

    move-object/from16 p0, v14

    invoke-direct/range {v24 .. v31}, Lcom/facebook/ads/redexgen/X/j8;-><init>(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/j7;Lcom/facebook/ads/redexgen/X/j6;)V

    .line 88148
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88149
    .end local v0    # "segmentMetadata":Lorg/json/JSONObject;
    .end local v5    # "dataSegment":Lorg/json/JSONObject;
    .end local v10    # "startTime":J
    .end local v12    # "endTime":J
    add-int/lit8 v0, v0, 0x1

    .end local v2    # "j":I
    .local v10, "j":I
    goto/16 :goto_1

    .line 88150
    .end local v4    # "stickerAssetId":Ljava/lang/String;
    .end local v16    # "imfSpecJson":Lorg/json/JSONArray;
    .end local v18    # "dataTrack":Lorg/json/JSONObject;
    .end local v19    # "dataSegments":Lorg/json/JSONArray;
    .end local v20    # "imfTrack":Lorg/json/JSONObject;
    .end local v21    # "stickerName":Ljava/lang/String;
    .end local v22    # "trackDataJson":Lorg/json/JSONObject;
    .local v2, "imfSpecJson":Lorg/json/JSONArray;
    .local v5, "imfTrack":Lorg/json/JSONObject;
    .restart local v6    # "dataTrack":Lorg/json/JSONObject;
    .restart local v8    # "stickerAssetId":Ljava/lang/String;
    .restart local v9    # "stickerName":Ljava/lang/String;
    .local v12, "dataSegments":Lorg/json/JSONArray;
    .restart local v15    # "trackDataJson":Lorg/json/JSONObject;
    .end local v2    # "imfSpecJson":Lorg/json/JSONArray;
    .end local v5    # "imfTrack":Lorg/json/JSONObject;
    .end local v6    # "dataTrack":Lorg/json/JSONObject;
    .end local v7    # "trackName":Ljava/lang/String;
    .end local v8    # "stickerAssetId":Ljava/lang/String;
    .end local v9    # "stickerName":Ljava/lang/String;
    .end local v10    # "j":I
    .end local v12    # "dataSegments":Lorg/json/JSONArray;
    .end local v14    # "stickerTrackType":Lcom/facebook/ads/redexgen/X/j7;
    .end local v15    # "trackDataJson":Lorg/json/JSONObject;
    .restart local v16    # "imfSpecJson":Lorg/json/JSONArray;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 88151
    .end local v3    # "i":I
    .end local v16    # "imfSpecJson":Lorg/json/JSONArray;
    .restart local v2    # "imfSpecJson":Lorg/json/JSONArray;
    :cond_1
    return-object v3
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xd0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/j9;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x1dt
        0x1at
        0x2dt
        0x1at
        0xct
        0x1et
        0x20t
        0x26t
        0x1et
        0x27t
        0x2dt
        0x2ct
        0x8t
        0x5t
        0x18t
        0x5t
        -0x8t
        0x16t
        0x5t
        0x7t
        0xft
        0x3dt
        0x46t
        0x3ct
        0x2ct
        0x41t
        0x45t
        0x3dt
        0x48t
        0x4ct
        0x45t
        0x28t
        0x4dt
        0x4bt
        0x48t
        0x4dt
        0x44t
        0x32t
        0x4ft
        0x44t
        0x42t
        0xft
        0x2t
        0x9t
        -0x2t
        0x11t
        0x6t
        0x13t
        0x2t
        -0x1bt
        0x2t
        0x6t
        0x4t
        0x5t
        0x11t
        0x2ft
        0x22t
        0x29t
        0x1et
        0x31t
        0x26t
        0x33t
        0x22t
        0x14t
        0x26t
        0x21t
        0x31t
        0x25t
        0x62t
        0x55t
        0x5ct
        0x51t
        0x64t
        0x59t
        0x66t
        0x55t
        0x48t
        0x29t
        0x1ct
        0x23t
        0x18t
        0x2bt
        0x20t
        0x2dt
        0x1ct
        0x10t
        0xft
        0xct
        0x11t
        -0x2t
        0x11t
        0x6t
        0xct
        0xbt
        -0x1ft
        0x2t
        0x4t
        0xft
        0x2t
        0x2t
        0x10t
        0x3at
        0x2ct
        0x2et
        0x34t
        0x2ct
        0x35t
        0x3bt
        0xbt
        0x28t
        0x3bt
        0x28t
        0x11t
        0x3at
        0x36t
        0x35t
        0x6ct
        0x6dt
        0x5at
        0x6bt
        0x6dt
        0x4dt
        0x62t
        0x66t
        0x5et
        0x17t
        0x18t
        0xdt
        0x7t
        0xft
        0x9t
        0x16t
        -0x1bt
        0x17t
        0x17t
        0x9t
        0x18t
        -0x13t
        0x8t
        0x14t
        0x15t
        0xat
        0x4t
        0xct
        0x6t
        0x13t
        -0xbt
        0x1at
        0x11t
        0x6t
        0x68t
        0x5dt
        0x61t
        0x59t
        0x46t
        0x55t
        0x62t
        0x5bt
        0x59t
        0x6at
        0x5ft
        0x63t
        0x5bt
        0x4ct
        0x57t
        0x62t
        0x6bt
        0x5bt
        0x69t
        0x67t
        0x56t
        0x58t
        0x60t
        0x38t
        0x64t
        0x62t
        0x65t
        0x64t
        0x68t
        0x5et
        0x69t
        0x5et
        0x64t
        0x63t
        0x68t
        0x30t
        0x2et
        0x1dt
        0x1ft
        0x27t
        0x0t
        0x1dt
        0x30t
        0x1dt
        0x6t
        0x2ft
        0x2bt
        0x2at
        -0xct
        -0xet
        -0x1ft
        -0x1dt
        -0x15t
        -0x32t
        -0x1ft
        -0x13t
        -0x1bt
    .end array-data
.end method
