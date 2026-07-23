.class public abstract Lcom/facebook/ads/redexgen/X/NI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1434
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rumqJp0zjtXTj7VCZC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TMr6rmpz3eFeqFi1AyEescympmX4mKYs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yKc30ML1ifcOIqfiQ1Y0n8yeP8tTgKvd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ifxbXcWS1dksd5gxUX3XXpeR8fGAW9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ARavVsGpFp1prhlT9X"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AJCuKBIGe5nliswM6BoL4M7qaWNzDabC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wiV5dRZ8vBgNvrirj4IbquLjXKvqAP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mqXFYOGhIorfWow0I7OGPDKbQEIe0IwJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NI;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NI;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ji;
    .locals 6

    .line 53125
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/NI;->A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;ZII)Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;ZII)Lcom/facebook/ads/redexgen/X/ji;
    .locals 60
    .param p0    # Lcom/facebook/ads/redexgen/X/gi;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 53126
    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 53127
    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ji;-><init>()V

    return-object v0

    .line 53128
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x17

    const/16 v1, 0x70

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p0

    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/XI;->A04(Landroid/content/Context;Ljava/lang/String;)V

    .line 53129
    const/16 v3, 0x1df

    const/16 v2, 0xa

    const/4 v1, 0x1

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 53130
    .local p0, "requestId":Ljava/lang/String;
    const/16 v3, 0x74

    const/16 v2, 0xc

    const/16 v1, 0x6a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 53131
    .local p1, "anLogoType":I
    const/16 v4, 0xfd

    const/16 v3, 0xd

    const/16 v2, 0x12

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 53132
    .local p2, "encryptedCPM":Ljava/lang/String;
    const/16 v4, 0x10a

    const/16 v3, 0xc

    const/16 v2, 0x34

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53133
    .local p3, "fbadCommand":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v40, 0x0

    .line 53134
    .local v43, "adCommand":Landroid/net/Uri;
    :goto_0
    const/16 v4, 0x80

    const/4 v3, 0x4

    const/16 v2, 0x36

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 53135
    .local p4, "adUntrimmedBodyText":Ljava/lang/String;
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Xv;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53136
    .local p5, "adBodyText":Ljava/lang/String;
    const/16 v4, 0x65

    const/16 v3, 0xf

    const/16 v2, 0x22

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 53137
    .local p6, "advertiserName":Ljava/lang/String;
    const/16 v4, 0x251

    const/4 v3, 0x5

    const/16 v2, 0x52

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 53138
    .local p7, "adTitle":Ljava/lang/String;
    const/16 v4, 0x249

    const/16 v3, 0x8

    const/16 v2, 0x7b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 53139
    .local p8, "adSubtitle":Ljava/lang/String;
    const/16 v4, 0x182

    const/16 v3, 0x8

    const/16 v2, 0x6f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 53140
    .local p9, "adHeadline":Ljava/lang/String;
    const/16 v4, 0x21b

    const/16 v3, 0xe

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 53141
    .local p10, "adSocialContext":Ljava/lang/String;
    const/16 v4, 0x193

    const/16 v3, 0x10

    const/16 v2, 0x7d

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 53142
    .local p11, "adLinkDescription":Ljava/lang/String;
    const/16 v4, 0x229

    const/16 v3, 0x15

    const/16 v2, 0x29

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 53143
    .local p12, "adSponsoredTranslation":Ljava/lang/String;
    const/16 v4, 0x57

    const/16 v3, 0xe

    const/16 v2, 0x63

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 53144
    .local p13, "adTranslation":Ljava/lang/String;
    const/16 v4, 0x1cb

    const/16 v3, 0x14

    const/16 v2, 0x5e

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 53145
    .local p14, "adPromotedTranslation":Ljava/lang/String;
    const/16 v4, 0x1bb

    const/16 v3, 0x10

    const/16 v2, 0x7b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 53146
    .local p15, "adPlayTranslation":Ljava/lang/String;
    const/16 v4, 0x1aa

    const/16 v3, 0x11

    const/16 v2, 0x26

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 53147
    .local p16, "adPauseTranslation":Ljava/lang/String;
    const/16 v4, 0x84

    const/16 v3, 0xe

    const/16 v2, 0x10

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 53148
    .local p17, "callToAction":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/7m;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/7m;

    move-result-object v23

    .line 53149
    .local p18, "adDataBundle":Lcom/facebook/ads/redexgen/X/jd;
    const/16 v4, 0x18a

    const/4 v3, 0x4

    const/16 v2, 0x26

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v24

    .line 53150
    .local p19, "icon":Lcom/facebook/ads/redexgen/X/Vb;
    const/16 v4, 0x18e

    const/4 v3, 0x5

    const/16 v2, 0x72

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v25

    .line 53151
    .local p20, "image":Lcom/facebook/ads/redexgen/X/Vb;
    const/16 v4, 0x23e

    const/16 v3, 0xb

    const/16 v2, 0x7c

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vc;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v26

    .line 53152
    .local p21, "starRating":Lcom/facebook/ads/redexgen/X/Vc;
    const/16 v4, 0x256

    const/16 v3, 0xf

    const/16 v2, 0xa

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 53153
    .local p22, "usedReportUrl":Ljava/lang/String;
    const/16 v4, 0xee

    const/16 v3, 0xf

    const/16 v2, 0x40

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v42

    .line 53154
    .local p23, "viewJSONLoggingEnabled":Z
    const/16 v4, 0xdb

    const/16 v3, 0x13

    const/16 v2, 0x36

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v43

    .line 53155
    .local p24, "viewSnapshotLoggingEnabled":Z
    const/16 v4, 0x202

    const/16 v3, 0x19

    const/16 v2, 0x2b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v45

    .line 53156
    .local p25, "snapshotLoggingDelayInSecond":I
    const/16 v4, 0x1e9

    const/16 v3, 0x19

    const/16 v2, 0x1d

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v44

    .line 53157
    .local p26, "snapshotCompressQuality":I
    const/16 v4, 0x2b7

    const/16 v3, 0x1f

    const/16 v2, 0x4b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v46

    .line 53158
    .local p27, "viewabilityCheckInitialDelayMs":I
    const/16 v4, 0x2d6

    const/16 v3, 0x1a

    const/16 v2, 0x12

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3e8

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v47

    .line 53159
    .local p28, "viewabilityCheckIntervalMs":I
    const/16 v4, 0x35

    const/16 v3, 0xf

    const/16 v2, 0x1e

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 53160
    .local p29, "adChoicesIconObject":Lorg/json/JSONObject;
    const/16 v22, 0x0

    .line 53161
    .local v0, "adChoicesIcon":Lcom/facebook/ads/redexgen/X/Vb;
    if-eqz v2, :cond_1

    .line 53162
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v22

    .line 53163
    .end local v0    # "adChoicesIcon":Lcom/facebook/ads/redexgen/X/Vb;
    .local p30, "adChoicesIcon":Lcom/facebook/ads/redexgen/X/Vb;
    :cond_1
    const/16 v4, 0x44

    const/16 v3, 0x13

    const/16 v2, 0x5f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53164
    .local p31, "adChoicesLinkUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mx;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Mv;

    move-result-object v48

    .line 53165
    .local p32, "invalidationBehavior":Lcom/facebook/ads/redexgen/X/Mv;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A03(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v49

    .line 53166
    .local p33, "detectionStrings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v4, 0x2ae

    const/16 v3, 0x9

    const/16 v2, 0x14

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 53167
    .local p34, "videoUrl":Ljava/lang/String;
    const/16 v4, 0x27b

    const/16 v3, 0x12

    const/16 v2, 0x4c

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v52

    .line 53168
    .local p35, "videoDuration":I
    const/16 v4, 0x296

    const/16 v3, 0x18

    const/16 v2, 0x3f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/NI;->A01:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v3, v2

    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x6f

    if-eq v3, v2, :cond_8

    sget-object v6, Lcom/facebook/ads/redexgen/X/NI;->A01:[Ljava/lang/String;

    const-string v3, "3DgIwYJYxCZHaga7jdAdEfDBKsaQLEaY"

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const-string v3, "PJjdxes2PDM40JhdCx"

    const/4 v2, 0x0

    aput-object v3, v6, v2

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v29

    .line 53169
    .local p36, "videoPreloadSizeBytes":J
    const/16 v4, 0x28d

    const/16 v3, 0x9

    const/16 v2, 0x78

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Xd;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 53170
    .local p38, "videoMPD":Ljava/lang/String;
    const/16 v4, 0x265

    const/16 v3, 0x16

    const/16 v2, 0x53

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 53171
    sget-object v31, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/Vf;

    .line 53172
    .local v0, "videoAutoPlay":Lcom/facebook/ads/redexgen/X/Vf;
    .local p39, "videoAutoPlay":Lcom/facebook/ads/redexgen/X/Vf;
    :goto_1
    const/16 v4, 0xbe

    const/16 v3, 0x1d

    const/16 v2, 0x6f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/ads/redexgen/X/NI;->A01:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, v4, v3

    const/4 v3, 0x6

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x6f

    if-eq v4, v3, :cond_5

    sget-object v6, Lcom/facebook/ads/redexgen/X/NI;->A01:[Ljava/lang/String;

    const-string v4, "EiaN2GrSxKmld9dBg6rLOOlJPXBJhn44"

    const/4 v3, 0x5

    aput-object v4, v6, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v51

    .line 53173
    .local p40, "containerViewabilityEnabled":Z
    const/16 v4, 0x9a

    const/16 v3, 0x24

    const/16 v2, 0x6b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v50

    .line 53174
    .local p41, "containerViewabilityCheckInterval":I
    const/16 v4, 0x116

    const/16 v3, 0x12

    const/16 v2, 0x63

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 53175
    .local p42, "isNativeCounterEnabled":Z
    const/16 v4, 0x128

    const/16 v3, 0x1a

    const/16 v2, 0x26

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v54

    .line 53176
    .local p43, "nativeCounterTimeInSeconds":I
    const/16 v4, 0x161

    const/16 v3, 0x21

    const/16 v2, 0x7a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 53177
    .local p44, "isNativeMultiClickCloseIconEnabled":Z
    const/16 v3, 0x142

    const/16 v2, 0x1f

    const/16 v1, 0xc

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v56

    .line 53178
    .local p45, "nativeMultiClickCloseIconCount":I
    const/16 v35, 0x0

    goto :goto_2

    .line 53179
    .end local v0    # "videoAutoPlay":Lcom/facebook/ads/redexgen/X/Vf;
    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53180
    sget-object v31, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Vf;

    goto :goto_1

    .line 53181
    :cond_3
    sget-object v31, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Vf;

    goto :goto_1

    .line 53182
    :cond_4
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v51

    .line 53183
    .local p40, "containerViewabilityEnabled":Z
    const/16 v4, 0x9a

    const/16 v3, 0x24

    const/16 v2, 0x6b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v50

    .line 53184
    .local p41, "containerViewabilityCheckInterval":I
    const/16 v4, 0x116

    const/16 v3, 0x12

    const/16 v2, 0x63

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 53185
    .local p42, "isNativeCounterEnabled":Z
    const/16 v4, 0x128

    const/16 v3, 0x1a

    const/16 v2, 0x26

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v54

    .line 53186
    .local p43, "nativeCounterTimeInSeconds":I
    const/16 v4, 0x161

    const/16 v3, 0x21

    const/16 v2, 0x7a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 53187
    .local p44, "isNativeMultiClickCloseIconEnabled":Z
    const/16 v3, 0x142

    const/16 v2, 0x1f

    const/16 v1, 0xc

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v56

    .line 53188
    .local p45, "nativeMultiClickCloseIconCount":I
    const/16 v35, 0x0

    .line 53189
    .local v1, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    :goto_2
    :try_start_0
    const/16 v3, 0x92

    const/16 v2, 0x8

    const/16 v1, 0x1a

    move-object/from16 v36, p2

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 53190
    .local v0, "carouselArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 53191
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 53192
    .local v9, "cardCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53193
    .end local v1    # "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    .local v10, "carouselList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    const/4 v0, 0x0

    .local v11, "cardIndex":I
    :goto_3
    if-ge v0, v1, :cond_6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53194
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v58

    .line 53195
    const/16 p0, 0x1

    move-object/from16 v57, v5

    move-object/from16 v59, v36

    move/from16 p1, v0

    move/from16 p2, v1

    invoke-static/range {v57 .. v62}, Lcom/facebook/ads/redexgen/X/NI;->A01(Lcom/facebook/ads/redexgen/X/gi;Lorg/json/JSONObject;Ljava/lang/String;ZII)Lcom/facebook/ads/redexgen/X/ji;

    move-result-object v4

    .line 53196
    .local v1, "mpaChildModel":Lcom/facebook/ads/redexgen/X/ji;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53197
    .end local v1    # "mpaChildModel":Lcom/facebook/ads/redexgen/X/ji;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53198
    .end local v0    # "carouselArray":Lorg/json/JSONArray;
    .end local v9    # "cardCount":I
    .end local v11    # "cardIndex":I
    :catch_0
    move-exception v0

    move-object/from16 v35, v3

    goto :goto_4

    :catch_1
    move-exception v0

    .line 53199
    .local v0, "je":Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/Td;->A2A:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 53200
    const/16 v4, 0x1a3

    const/4 v3, 0x7

    const/16 v2, 0x48

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2, v5, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 53201
    sget-object v4, Lcom/facebook/ads/redexgen/X/ju;->A0E:Ljava/lang/String;

    const/16 v3, 0x17

    const/16 v2, 0x1e

    const/16 v1, 0x61

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NI;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 53202
    .restart local v0    # "je":Lorg/json/JSONException;
    .restart local v9    # "cardCount":I
    .restart local v11    # "cardIndex":I
    :cond_6
    move-object/from16 v35, v3

    .line 53203
    .end local v0    # "je":Lorg/json/JSONException;
    :cond_7
    :goto_5
    new-instance v6, Lcom/facebook/ads/redexgen/X/ji;

    move/from16 v34, p5

    move/from16 v33, p4

    move/from16 v32, p3

    invoke-direct/range {v6 .. v56}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Vb;Lcom/facebook/ads/redexgen/X/Vb;Lcom/facebook/ads/redexgen/X/Vc;Ljava/lang/String;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Vf;ZIILjava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZIIIILcom/facebook/ads/redexgen/X/Mv;Ljava/util/Collection;IZIZIZI)V

    return-object v6

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NI;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x2f0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NI;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x4et
        0x3dt
        0x42t
        0x3et
        0x47t
        0x3ct
        0x3et
        -0x7t
        0x27t
        0x3et
        0x4dt
        0x50t
        0x48t
        0x4bt
        0x44t
        -0x7t
        0x25t
        0x48t
        0x3at
        0x3dt
        0x3et
        0x3dt
        0x1ft
        0x38t
        0x2bt
        0x2ct
        0x36t
        0x2ft
        -0x16t
        0x3et
        0x39t
        -0x16t
        0x3at
        0x2bt
        0x3ct
        0x3dt
        0x2ft
        -0x16t
        0x2dt
        0x2bt
        0x3ct
        0x39t
        0x3ft
        0x3dt
        0x2ft
        0x36t
        -0x16t
        0x2et
        0x2bt
        0x3et
        0x2bt
        -0x8t
        -0x18t
        -0x15t
        -0x1at
        -0x16t
        -0x11t
        -0xat
        -0x10t
        -0x16t
        -0x14t
        -0x6t
        -0x1at
        -0x10t
        -0x16t
        -0xat
        -0xbt
        0x29t
        0x2ct
        0x27t
        0x2bt
        0x30t
        0x37t
        0x31t
        0x2bt
        0x2dt
        0x3bt
        0x27t
        0x34t
        0x31t
        0x36t
        0x33t
        0x27t
        0x3dt
        0x3at
        0x34t
        0x2dt
        0x30t
        0x2bt
        0x40t
        0x3et
        0x2dt
        0x3at
        0x3ft
        0x38t
        0x2dt
        0x40t
        0x35t
        0x3bt
        0x3at
        -0x14t
        -0x11t
        0x1t
        -0x10t
        -0x3t
        -0x1t
        -0xct
        -0x2t
        -0x10t
        -0x3t
        -0x16t
        -0x7t
        -0x14t
        -0x8t
        -0x10t
        0x34t
        0x41t
        0x32t
        0x3ft
        0x42t
        0x3at
        0x42t
        0x32t
        0x47t
        0x4ct
        0x43t
        0x38t
        0x1t
        0xet
        0x3t
        0x18t
        -0x24t
        -0x26t
        -0x1bt
        -0x1bt
        -0x28t
        -0x13t
        -0x18t
        -0x28t
        -0x26t
        -0x24t
        -0x13t
        -0x1et
        -0x18t
        -0x19t
        -0x1at
        -0x1ct
        -0xbt
        -0xet
        -0x8t
        -0xat
        -0x18t
        -0x11t
        0x37t
        0x43t
        0x42t
        0x48t
        0x35t
        0x3dt
        0x42t
        0x39t
        0x46t
        0x33t
        0x4at
        0x3dt
        0x39t
        0x4bt
        0x35t
        0x36t
        0x3dt
        0x40t
        0x3dt
        0x48t
        0x4dt
        0x33t
        0x37t
        0x3ct
        0x39t
        0x37t
        0x3ft
        0x33t
        0x3dt
        0x42t
        0x48t
        0x39t
        0x46t
        0x4at
        0x35t
        0x40t
        0x3bt
        0x47t
        0x46t
        0x4ct
        0x39t
        0x41t
        0x46t
        0x3dt
        0x4at
        0x37t
        0x4et
        0x41t
        0x3dt
        0x4ft
        0x39t
        0x3at
        0x41t
        0x44t
        0x41t
        0x4ct
        0x51t
        0x37t
        0x3dt
        0x46t
        0x39t
        0x3at
        0x44t
        0x3dt
        0x3ct
        0x4t
        0xdt
        0x0t
        0x1t
        0xbt
        0x4t
        -0x2t
        0x12t
        0xdt
        0x0t
        0xft
        0x12t
        0x7t
        0xet
        0x13t
        -0x2t
        0xbt
        0xet
        0x6t
        0xet
        0x17t
        0xat
        0xbt
        0x15t
        0xet
        0x8t
        0x1ft
        0x12t
        0xet
        0x20t
        0x8t
        0x15t
        0x18t
        0x10t
        -0x20t
        -0x17t
        -0x22t
        -0x13t
        -0xct
        -0x15t
        -0x11t
        -0x20t
        -0x21t
        -0x26t
        -0x22t
        -0x15t
        -0x18t
        0x3t
        -0x1t
        -0x2t
        0x1t
        -0x4t
        0x0t
        0xct
        0xat
        0xat
        -0x2t
        0xbt
        0x1t
        0x34t
        0x31t
        0x2bt
        0x2ft
        0x3bt
        0x41t
        0x3at
        0x40t
        0x31t
        0x3et
        0x2bt
        0x31t
        0x3at
        0x2dt
        0x2et
        0x38t
        0x31t
        0x30t
        -0x9t
        -0xct
        -0x12t
        -0xet
        -0x2t
        0x4t
        -0x3t
        0x3t
        -0xct
        0x1t
        -0x12t
        0x3t
        -0x8t
        -0x4t
        -0xct
        -0x12t
        -0x8t
        -0x3t
        -0x12t
        0x2t
        -0xct
        -0xet
        -0x2t
        -0x3t
        -0xdt
        0x2t
        -0x23t
        -0x26t
        -0x2ct
        -0x1et
        -0x16t
        -0x1ft
        -0x17t
        -0x22t
        -0x2ct
        -0x28t
        -0x1ft
        -0x22t
        -0x28t
        -0x20t
        -0x2ct
        -0x28t
        -0x1ft
        -0x1ct
        -0x18t
        -0x26t
        -0x2ct
        -0x22t
        -0x28t
        -0x1ct
        -0x1dt
        -0x2ct
        -0x28t
        -0x1ct
        -0x16t
        -0x1dt
        -0x17t
        0x4bt
        0x48t
        0x42t
        0x50t
        0x58t
        0x4ft
        0x57t
        0x4ct
        0x42t
        0x46t
        0x4ft
        0x4ct
        0x46t
        0x4et
        0x42t
        0x46t
        0x4ft
        0x52t
        0x56t
        0x48t
        0x42t
        0x4ct
        0x46t
        0x52t
        0x51t
        0x42t
        0x48t
        0x51t
        0x44t
        0x45t
        0x4ft
        0x48t
        0x47t
        0x40t
        0x3dt
        0x39t
        0x3ct
        0x44t
        0x41t
        0x46t
        0x3dt
        -0x8t
        -0xet
        -0x2t
        -0x3t
        0x44t
        0x48t
        0x3ct
        0x42t
        0x40t
        0x52t
        0x4ft
        0x54t
        0x51t
        0x45t
        0x4at
        0x4bt
        0x59t
        0x49t
        0x58t
        0x4ft
        0x56t
        0x5at
        0x4ft
        0x55t
        0x54t
        0x21t
        0x12t
        0x23t
        0x24t
        0x1at
        0x1ft
        0x18t
        -0x1t
        -0x10t
        0x4t
        0x2t
        -0xct
        -0x12t
        0x3t
        0x1t
        -0x10t
        -0x3t
        0x2t
        -0x5t
        -0x10t
        0x3t
        -0x8t
        -0x2t
        -0x3t
        0x54t
        0x50t
        0x45t
        0x5dt
        0x43t
        0x58t
        0x56t
        0x45t
        0x52t
        0x57t
        0x50t
        0x45t
        0x58t
        0x4dt
        0x53t
        0x52t
        0x37t
        0x39t
        0x36t
        0x34t
        0x36t
        0x3bt
        0x2ct
        0x2bt
        0x26t
        0x3bt
        0x39t
        0x28t
        0x35t
        0x3at
        0x33t
        0x28t
        0x3bt
        0x30t
        0x36t
        0x35t
        -0x24t
        -0x31t
        -0x25t
        -0x21t
        -0x31t
        -0x23t
        -0x22t
        -0x37t
        -0x2dt
        -0x32t
        -0x7t
        -0xct
        -0x19t
        -0xat
        -0x7t
        -0x12t
        -0xbt
        -0x6t
        -0x1bt
        -0x17t
        -0xbt
        -0xdt
        -0xat
        -0x8t
        -0x15t
        -0x7t
        -0x7t
        -0x1bt
        -0x9t
        -0x5t
        -0x19t
        -0xet
        -0x11t
        -0x6t
        -0x1t
        0x7t
        0x2t
        -0xbt
        0x4t
        0x7t
        -0x4t
        0x3t
        0x8t
        -0xdt
        0x0t
        0x3t
        -0x5t
        -0xdt
        -0x8t
        -0x7t
        0x0t
        -0xbt
        0xdt
        -0xdt
        0x7t
        -0x7t
        -0x9t
        0x3t
        0x2t
        -0x8t
        -0x4t
        -0x8t
        -0x14t
        -0xet
        -0x16t
        -0xbt
        -0x18t
        -0x14t
        -0x8t
        -0x9t
        -0x3t
        -0x12t
        0x1t
        -0x3t
        0x5t
        0x2t
        0x1t
        0x0t
        0x5t
        0x1t
        0x4t
        -0x9t
        -0xat
        -0xft
        0x6t
        0x4t
        -0xdt
        0x0t
        0x5t
        -0x2t
        -0xdt
        0x6t
        -0x5t
        0x1t
        0x0t
        0x58t
        0x59t
        0x46t
        0x57t
        0x44t
        0x57t
        0x46t
        0x59t
        0x4et
        0x53t
        0x4ct
        0x57t
        0x59t
        0x46t
        0x58t
        0x4dt
        0x58t
        0x50t
        0x49t
        0x2ft
        0x24t
        0x2ft
        0x27t
        0x20t
        -0x18t
        -0x1at
        -0x28t
        -0x29t
        -0x2et
        -0x1bt
        -0x28t
        -0x1dt
        -0x1et
        -0x1bt
        -0x19t
        -0x2et
        -0x18t
        -0x1bt
        -0x21t
        0x32t
        0x25t
        0x20t
        0x21t
        0x2bt
        0x1bt
        0x1dt
        0x31t
        0x30t
        0x2bt
        0x2ct
        0x28t
        0x1dt
        0x35t
        0x1bt
        0x21t
        0x2at
        0x1dt
        0x1et
        0x28t
        0x21t
        0x20t
        0x2bt
        0x1et
        0x19t
        0x1at
        0x24t
        0x14t
        0x19t
        0x2at
        0x27t
        0x16t
        0x29t
        0x1et
        0x24t
        0x23t
        0x14t
        0x28t
        0x1at
        0x18t
        0x57t
        0x4at
        0x45t
        0x46t
        0x50t
        0x40t
        0x4et
        0x51t
        0x45t
        0x1et
        0x11t
        0xct
        0xdt
        0x17t
        0x7t
        0x18t
        0x1at
        0xdt
        0x14t
        0x17t
        0x9t
        0xct
        0x7t
        0x1bt
        0x11t
        0x22t
        0xdt
        0x7t
        0xat
        0x21t
        0x1ct
        0xdt
        0x1bt
        -0xdt
        -0x1at
        -0x1ft
        -0x1et
        -0x14t
        -0x24t
        -0xet
        -0x11t
        -0x17t
        0x2at
        0x1dt
        0x19t
        0x2bt
        0x15t
        0x16t
        0x1dt
        0x20t
        0x1dt
        0x28t
        0x2dt
        0x13t
        0x17t
        0x1ct
        0x19t
        0x17t
        0x1ft
        0x13t
        0x1dt
        0x22t
        0x1dt
        0x28t
        0x1dt
        0x15t
        0x20t
        0x13t
        0x18t
        0x19t
        0x20t
        0x15t
        0x2dt
        -0xft
        -0x1ct
        -0x20t
        -0xet
        -0x24t
        -0x23t
        -0x1ct
        -0x19t
        -0x1ct
        -0x11t
        -0xct
        -0x26t
        -0x22t
        -0x1dt
        -0x20t
        -0x22t
        -0x1at
        -0x26t
        -0x1ct
        -0x17t
        -0x11t
        -0x20t
        -0x13t
        -0xft
        -0x24t
        -0x19t
    .end array-data
.end method
