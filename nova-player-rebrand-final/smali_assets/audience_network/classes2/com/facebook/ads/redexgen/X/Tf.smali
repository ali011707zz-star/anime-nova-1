.class public final Lcom/facebook/ads/redexgen/X/Tf;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/Object;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1887
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xyQF3sxjnp2qUSvJDNu5P0iyyc584Vpd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "idh0g523ELVLwEFfu1u5qrhcL3DPrNZC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UJ0fDp2QsgF1WBSdDofKnf2EwbpjWzp9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LsjKEz1u6vy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QA8fX7ramcT9ifSsWPTVo7ChqvJDDBqT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HHR99srKdCFKOrgMnrhL9AMY8z42dkOr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PWBGS5sCKwM35N3BbQj09sXNColJxvDn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tf;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tf;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Tf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A03:Ljava/lang/String;

    .line 1888
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A02:Ljava/lang/Object;

    .line 1889
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1890
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    .line 1891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1892
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    .line 1893
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 5

    .line 65632
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65633
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 65634
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/T8;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Th;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/T8;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Th;"
        }
    .end annotation

    .line 65635
    .local p3, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 65636
    :try_start_0
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TR;

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/ads/redexgen/X/TR;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 65637
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/U7;->A01()D

    move-result-wide v2

    .line 65638
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/U7;->A02()Ljava/lang/String;

    move-result-object v4

    .line 65639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TR;->A02()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Th;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Th;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    move-object v5, v0

    .line 65640
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/Tf;->A0C(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/T8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65641
    :catch_0
    return-object v5
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tf;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/T8;)Lorg/json/JSONArray;
    .locals 1

    .line 65642
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A04(Lcom/facebook/ads/redexgen/X/T8;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/T8;I)Lorg/json/JSONArray;
    .locals 10

    .line 65643
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 65644
    .local v0, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v9, Lcom/facebook/ads/redexgen/X/Tf;->A02:Ljava/lang/Object;

    monitor-enter v9

    .line 65645
    const/4 v3, 0x0

    .line 65646
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 65647
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 65648
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const/16 v5, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65649
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65650
    .local v5, "debugLogFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65651
    const/16 v5, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65652
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T8;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 65653
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 65654
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 65655
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v7, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 65656
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65657
    .local v6, "debugLogEvent":Lorg/json/JSONObject;
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65658
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65659
    :cond_1
    const/16 v6, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65660
    .local v8, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65661
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 65662
    .local v9, "attempt":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65663
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    .line 65664
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65665
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65666
    :goto_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 65667
    :cond_2
    invoke-static {v7, v1}, Lcom/facebook/ads/redexgen/X/Tf;->A0E(Ljava/lang/String;I)V

    goto :goto_1

    .line 65668
    :goto_2
    if-lez p1, :cond_0

    .line 65669
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 65670
    .end local v5    # "debugLogFile":Ljava/io/File;
    .end local v7    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65671
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 65672
    :cond_4
    if-eqz v4, :cond_5

    .line 65673
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 65674
    :cond_5
    if-eqz v3, :cond_8

    .line 65675
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65676
    :catch_0
    move-exception v1

    .line 65677
    .local v5, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    goto :goto_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65678
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 65679
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65680
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65681
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 65682
    :cond_6
    if-eqz v4, :cond_7

    .line 65683
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 65684
    :cond_7
    if-eqz v3, :cond_8

    .line 65685
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65686
    :catch_3
    move-exception v1

    .line 65687
    .local v5, "ex":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    :goto_4
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65688
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_8
    :goto_5
    monitor-exit v9

    .line 65689
    return-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65690
    :catchall_0
    move-exception v2

    .line 65691
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4
    if-eqz v8, :cond_9

    .line 65692
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 65693
    :cond_9
    if-eqz v4, :cond_a

    .line 65694
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 65695
    :cond_a
    if-eqz v3, :cond_b

    .line 65696
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 65697
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4
    :catch_4
    move-exception v1

    .line 65698
    .local v6, "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65699
    .end local v0    # "debugLogEvents":Lorg/json/JSONArray;
    .end local p2
    .end local p3
    :cond_b
    :goto_6
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 65700
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4
    :catchall_1
    move-exception v0

    .end local v2
    .end local v3
    .end local v4
    .restart local v0    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local p2
    .restart local p3
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Th;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65701
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 65702
    .local v0, "reportObject":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65703
    const/16 v2, 0x196

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Th;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65704
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Th;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x192

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65705
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Th;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65706
    const/16 v2, 0x159

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Th;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65707
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Th;->A04()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 65708
    :goto_0
    const/16 v2, 0x10b

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65709
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65710
    return-object v4

    .line 65711
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x19a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x49t
        -0x18t
        -0x24t
        0x0t
        0x2et
        0x2bt
        0x2ct
        -0x1t
        0x2bt
        0x31t
        0x2at
        0x30t
        0x21t
        0x2et
        -0xat
        -0x24t
        -0x49t
        -0x2bt
        -0x1et
        -0x65t
        -0x18t
        -0x6ct
        -0x28t
        -0x27t
        -0x20t
        -0x27t
        -0x18t
        -0x27t
        -0x6ct
        -0x28t
        -0x27t
        -0x2at
        -0x17t
        -0x25t
        -0x6ct
        -0x27t
        -0x16t
        -0x27t
        -0x1et
        -0x18t
        -0x19t
        -0x6ct
        -0x26t
        -0x23t
        -0x20t
        -0x27t
        -0x5et
        0x1et
        0x3ct
        0x49t
        0x2t
        0x4ft
        -0x5t
        0x3ft
        0x40t
        0x47t
        0x40t
        0x4ft
        0x40t
        -0x5t
        0x41t
        0x44t
        0x47t
        0x40t
        -0x4t
        0x19t
        0x1at
        0x17t
        0x2at
        0x1ct
        0x34t
        0x25t
        0x27t
        0x1at
        0x1bt
        -0x2bt
        0x6t
        -0xbt
        -0x2t
        0x4t
        -0x2dt
        -0x1t
        0x5t
        -0x2t
        0x4t
        0x3t
        -0x1t
        -0x2t
        0x32t
        0x21t
        0x26t
        0x22t
        0x2bt
        0x20t
        0x22t
        0xbt
        0x22t
        0x31t
        0x34t
        0x2ct
        0x2ft
        0x28t
        -0x24t
        0x1t
        -0x2t
        -0xdt
        -0xft
        -0x54t
        -0x10t
        -0xft
        -0x12t
        0x1t
        -0xdt
        -0x54t
        -0xft
        0x2t
        -0xft
        -0x6t
        0x0t
        -0x1t
        -0x54t
        -0xet
        -0xbt
        -0x8t
        -0xft
        -0x46t
        -0x6at
        -0x2et
        -0xbt
        -0x8t
        -0xft
        -0x54t
        -0x1t
        -0xbt
        0x6t
        -0xft
        -0x3at
        -0x54t
        0x20t
        0x38t
        0x36t
        0x3dt
        0x3dt
        0x32t
        0x31t
        -0x13t
        0x32t
        0x43t
        0x32t
        0x3bt
        0x41t
        0x40t
        -0x5t
        0x1t
        0x19t
        0x17t
        0x1et
        0x1et
        0x17t
        0x1ct
        0x15t
        -0x32t
        0x11t
        0x1dt
        0x20t
        0x20t
        0x23t
        0x1et
        0x22t
        0x13t
        0x12t
        -0x32t
        0x12t
        0x13t
        0x10t
        0x23t
        0x15t
        -0x32t
        0x13t
        0x24t
        0x13t
        0x1ct
        0x22t
        -0x32t
        0x1at
        0x17t
        0x1ct
        0x13t
        -0x24t
        0x2ct
        0x4at
        0x51t
        0x41t
        0x46t
        0x3ft
        -0x8t
        0x4ct
        0x47t
        -0x8t
        0x4dt
        0x48t
        0x3ct
        0x39t
        0x4ct
        0x3dt
        -0x8t
        0x4dt
        0x46t
        0x4at
        0x3dt
        0x3bt
        0x47t
        0x4at
        0x3ct
        0x3dt
        0x3ct
        -0x8t
        0x3ct
        0x3dt
        0x3at
        0x4dt
        0x3ft
        0x24t
        0x47t
        0x3ft
        0x1dt
        0x4et
        0x3dt
        0x46t
        0x4ct
        0x6t
        -0x8t
        0x39t
        0x3ct
        0x3ct
        0x41t
        0x46t
        0x3ft
        -0x8t
        0x4ct
        0x47t
        -0x8t
        0x27t
        0x46t
        0x3ft
        0x47t
        0x41t
        0x46t
        0x3ft
        0x1dt
        0x4et
        0x3dt
        0x46t
        0x4ct
        0x6t
        0x24t
        0x39t
        0x2at
        0x32t
        0x35t
        0x1dt
        0x30t
        0x30t
        0x21t
        0x29t
        0x2ct
        0x30t
        -0xdt
        -0x10t
        0x3t
        -0x10t
        -0x2dt
        -0x2ct
        -0x32t
        -0x25t
        -0x22t
        -0x2at
        -0x2at
        -0x28t
        -0x23t
        -0x2at
        -0x17t
        -0x16t
        -0x19t
        -0x6t
        -0x14t
        -0xft
        -0xct
        -0x14t
        -0x8t
        0x22t
        0x25t
        0x2at
        0x25t
        0x2ft
        0x24t
        0x21t
        0x20t
        -0x24t
        0x21t
        0x32t
        0x21t
        0x2at
        0x30t
        -0x24t
        0x2ft
        0x24t
        0x2bt
        0x31t
        0x28t
        0x20t
        -0x24t
        0x2at
        0x2bt
        0x30t
        -0x24t
        0x1et
        0x21t
        -0x24t
        0x31t
        0x2ct
        0x20t
        0x1dt
        0x30t
        0x21t
        0x20t
        -0x24t
        0x30t
        0x2bt
        -0x24t
        0xbt
        0x2at
        0x23t
        0x2bt
        0x25t
        0x2at
        0x23t
        0x1t
        0x32t
        0x21t
        0x2at
        0x30t
        -0x16t
        0x41t
        0x3ct
        -0x7t
        -0x15t
        -0x7t
        -0x7t
        -0x11t
        -0xbt
        -0xct
        -0x1bt
        -0x11t
        -0x16t
        -0xdt
        -0x1bt
        -0xdt
        -0xdt
        -0x17t
        -0x11t
        -0x12t
        -0x21t
        -0xct
        -0x17t
        -0x13t
        -0x1bt
        0x31t
        0x29t
        0x27t
        0x2et
        0x2et
        0x23t
        0x22t
        0x3t
        0x34t
        0x23t
        0x2ct
        0x32t
        0x31t
        -0x22t
        -0x5t
        -0x22t
        -0x22t
        -0x20t
        -0x33t
        -0x21t
        -0x1ct
        -0x25t
        -0x30t
        0x13t
        0x15t
        0x2t
        0x14t
        0x19t
        0x10t
        0x5t
        -0x1t
        0x3t
        0xft
        0x4t
        0x5t
        0x46t
        0x3bt
        0x3ft
        0x37t
        0x4at
        0x4ft
        0x46t
        0x3bt
    .end array-data
.end method

.method public static A07(Landroid/content/Context;)V
    .locals 5

    .line 65712
    sget-object v4, Lcom/facebook/ads/redexgen/X/Tf;->A02:Ljava/lang/Object;

    monitor-enter v4

    .line 65713
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65714
    .local v1, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65715
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65716
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A09(Landroid/content/Context;I)V

    .line 65717
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65718
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65719
    .end local v1    # "debugFile":Ljava/io/File;
    monitor-exit v4

    .line 65720
    return-void

    .line 65721
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A08(Landroid/content/Context;)V
    .locals 5

    .line 65722
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65723
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 65724
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 65725
    .local v1, "eventCount":I
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A09(Landroid/content/Context;I)V

    .line 65726
    return-void
.end method

.method public static A09(Landroid/content/Context;I)V
    .locals 7

    .line 65727
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65728
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65729
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 65730
    if-gez p1, :cond_0

    .line 65731
    :goto_0
    const/16 v5, 0x4b

    const/16 v4, 0xa

    const/16 v3, 0x26

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tf;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65732
    :cond_0
    move v6, p1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tf;->A01:[Ljava/lang/String;

    const-string v1, "i"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65733
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65734
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
    .locals 2

    .line 65735
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65736
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object p1

    const/16 p0, 0x2f

    const/16 v1, 0x12

    const/16 v0, 0x71

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65738
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65739
    :cond_0
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V
    .locals 3

    .line 65740
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 65741
    .local v0, "attempt":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 65742
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65743
    sget-object p0, Lcom/facebook/ads/redexgen/X/Tf;->A03:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x42

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65744
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 65745
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65746
    return-void

    .line 65747
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Th;Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 8

    .line 65748
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 65749
    sget-object v7, Lcom/facebook/ads/redexgen/X/Tf;->A02:Ljava/lang/Object;

    monitor-enter v7

    .line 65750
    :try_start_0
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65751
    .local v1, "processSpecificName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65752
    .local v2, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65753
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ur;->A07(Landroid/content/Context;)I

    move-result v3

    .line 65754
    .local v3, "debugLogFileSizeLimit":I
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 65755
    .local v4, "fileSize":J
    if-lez v3, :cond_1

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    .line 65756
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 65757
    .local v6, "deleted":Z
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A09(Landroid/content/Context;I)V

    .line 65758
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65759
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65760
    if-nez v3, :cond_0

    goto :goto_0

    .line 65761
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TB;->A5a()Ljava/util/Map;

    move-result-object v4

    .line 65762
    .local v7, "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x17f

    const/4 v3, 0x7

    const/4 v0, 0x1

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10f

    const/16 v5, 0xa

    const/4 v0, 0x5

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65763
    const/16 v5, 0x186

    const/16 v3, 0xc

    const/16 v0, 0x36

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65764
    const/16 v3, 0x961

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 65765
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x66

    const/16 v3, 0x24

    const/16 v0, 0x22

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65767
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65768
    invoke-static {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/Tf;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/T8;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Th;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65769
    :try_start_1
    monitor-exit v7

    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65770
    :goto_0
    :try_start_2
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    const/16 v2, 0x1f

    const/16 v0, 0xa

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65771
    .end local v3    # "debugLogFileSizeLimit":I
    .end local v4    # "fileSize":J
    .end local v6    # "deleted":Z
    .end local v7    # "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Tf;->A05(Lcom/facebook/ads/redexgen/X/Th;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65772
    .local v3, "debugLogJson":Lorg/json/JSONObject;
    const v0, 0x8000

    invoke-virtual {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/T8;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 65773
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65774
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 65775
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 65776
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Tf;->A08(Landroid/content/Context;)V

    goto :goto_1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65777
    :catch_0
    move-exception v1

    .line 65778
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65779
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v7

    goto :goto_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 65780
    :cond_2
    :goto_2
    return-void
.end method

.method public static A0D(Ljava/lang/String;)V
    .locals 1

    .line 65781
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65782
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65783
    return-void
.end method

.method public static A0E(Ljava/lang/String;I)V
    .locals 2

    .line 65784
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65785
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65786
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65787
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65788
    return-void

    .line 65789
    :cond_1
    const/16 p0, 0x122

    const/16 v1, 0x35

    const/16 v0, 0x52

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/T8;)Z
    .locals 1

    .line 65790
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ur;->A0O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65791
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Tf;->A0H(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    return v0

    .line 65792
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Tf;->A0G(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    return v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/T8;)Z
    .locals 14

    .line 65793
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 65794
    .local v2, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v13, Lcom/facebook/ads/redexgen/X/Tf;->A02:Ljava/lang/Object;

    monitor-enter v13

    .line 65795
    const/4 v7, 0x0

    .line 65796
    .local v4, "skippedEvents":I
    const/4 v4, 0x0

    .line 65797
    .local v5, "inputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 65798
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v12, 0x0

    .line 65799
    .local v7, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 65800
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65801
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65802
    .local v10, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65803
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65804
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T8;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 65805
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 65806
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 65807
    :cond_0
    :goto_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v11, "line":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 65808
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65809
    .local v0, "debugLog":Lorg/json/JSONObject;
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65810
    .local v12, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65811
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65812
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65813
    .local v13, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 65814
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ur;->A02(Landroid/content/Context;)I

    move-result v2

    .line 65815
    .local p0, "retryLimit":I
    const/4 v0, -0x1

    if-le v2, v0, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v2, -0x1

    if-le v1, v0, :cond_1

    .line 65816
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Tf;->A0D(Ljava/lang/String;)V

    .line 65817
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 65818
    :cond_1
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65819
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 65820
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 65821
    :cond_3
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 65822
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65823
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 65824
    .local v9, "length":I
    const/4 v2, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v2, v9, :cond_5

    .line 65825
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 65826
    .local v13, "debugLog":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65827
    .end local v13    # "debugLog":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65828
    .end local v12    # "i":I
    :cond_5
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65829
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 65830
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 65831
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 65832
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "length":I
    .end local v11    # "line":Ljava/lang/String;
    :cond_6
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Tf;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A09(Landroid/content/Context;I)V

    .line 65833
    if-lez v7, :cond_7

    .line 65834
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v10

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v2

    sget v9, Lcom/facebook/ads/redexgen/X/Td;->A2Y:I

    const/16 v6, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x63

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x16f

    const/16 v6, 0x10

    const/16 v0, 0x54

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65835
    invoke-interface {v10, v2, v9, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 65836
    :cond_7
    if-eqz v12, :cond_8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65837
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 65838
    :cond_8
    if-eqz v5, :cond_9

    .line 65839
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 65840
    :cond_9
    if-eqz v4, :cond_a

    .line 65841
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65842
    :cond_a
    if-eqz v3, :cond_b

    .line 65843
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65844
    :catch_0
    move-exception v1

    .line 65845
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65846
    :cond_b
    :goto_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65847
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    .line 65848
    const/4 v0, 0x1

    return v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65849
    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    .line 65850
    .local v9, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65851
    if-eqz v12, :cond_c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65852
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 65853
    :cond_c
    if-eqz v5, :cond_d

    .line 65854
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 65855
    :cond_d
    if-eqz v4, :cond_e

    .line 65856
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65857
    :cond_e
    if-eqz v3, :cond_f

    .line 65858
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65859
    :catch_3
    move-exception v1

    .line 65860
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65861
    :cond_f
    :goto_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65862
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    .line 65863
    const/4 v0, 0x0

    return v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65864
    .end local v10    # "debugFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 65865
    .end local v9    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_10

    .line 65866
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 65867
    :cond_10
    if-eqz v5, :cond_11

    .line 65868
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 65869
    :cond_11
    if-eqz v4, :cond_12

    .line 65870
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65871
    :cond_12
    if-eqz v3, :cond_13

    .line 65872
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 65873
    .restart local v4    # "skippedEvents":I
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8
    :catch_4
    move-exception v1

    .line 65874
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65875
    :cond_13
    :goto_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65876
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65877
    .end local v2    # "debugLogEvents":Lorg/json/JSONArray;
    .end local p2
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 65878
    .end local v4    # "skippedEvents":I
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8
    :catchall_1
    move-exception v0

    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .restart local v2    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local p2
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/T8;)Z
    .locals 17

    .line 65879
    sget-object v16, Lcom/facebook/ads/redexgen/X/Tf;->A02:Ljava/lang/Object;

    monitor-enter v16

    .line 65880
    const/4 v9, 0x0

    .line 65881
    .local v3, "skippedEvents":I
    const/4 v5, 0x0

    .line 65882
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 65883
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v15, 0x0

    .line 65884
    .local v6, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 65885
    .local v7, "debugFileOutputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 65886
    .local v8, "tempFileInputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 65887
    .local v9, "tempFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x1b

    move-object/from16 v6, p0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 65888
    invoke-static {v0, v6}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 65889
    .local v11, "processSpecificDebugFileName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65890
    .local v12, "debugFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v11, 0xff

    const/4 v10, 0x5

    const/16 v0, 0x5b

    invoke-static {v11, v10, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 65891
    .local v13, "tempFileName":Ljava/lang/String;
    invoke-static {v6, v10}, Lcom/facebook/ads/redexgen/X/Tf;->A0A(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 65892
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65893
    const v0, 0x8000

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/T8;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 65894
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/T8;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 65895
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 65896
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 65897
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v14, "line":Ljava/lang/String;
    if-eqz v0, :cond_4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 65898
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65899
    .local v0, "debugLog":Lorg/json/JSONObject;
    const/16 v12, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x6e

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 65900
    .local v15, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65901
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v16, "inputStream":Ljava/io/FileInputStream;
    if-eqz v0, :cond_3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 65902
    :try_start_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65903
    .local v10, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 65904
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 65905
    .restart local v0    # "debugLog":Lorg/json/JSONObject;
    .restart local v10    # "attempt":Ljava/lang/Integer;
    .restart local v15    # "eventId":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 65906
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ur;->A02(Landroid/content/Context;)I

    move-result v12

    .line 65907
    .local p1, "retryLimit":I
    const/4 v0, -0x1

    .end local p1
    .local v5, "retryLimit":I
    .local p2, "inputStreamReader":Ljava/io/InputStreamReader;
    if-le v12, v0, :cond_2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .local p1, "bufferedReader":Ljava/io/BufferedReader;
    add-int/lit8 v0, v12, -0x1

    if-le v1, v0, :cond_2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 65908
    :try_start_9
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/Tf;->A0D(Ljava/lang/String;)V

    .line 65909
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 65910
    .end local p1
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :catch_1
    move-exception v13

    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    goto :goto_2

    .line 65911
    .end local v6
    .restart local p1
    :cond_2
    :try_start_a
    const/16 v12, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 65913
    .end local p1
    .end local p2
    .restart local v5    # "retryLimit":I
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :catch_2
    move-exception v13

    .end local v5    # "retryLimit":I
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    goto :goto_2

    .line 65914
    .end local p1
    .end local p2
    .restart local v0    # "debugLog":Lorg/json/JSONObject;
    .restart local v5    # "retryLimit":I
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "eventId":Ljava/lang/String;
    .end local v5    # "retryLimit":I
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    :cond_3
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 65915
    .end local v0    # "debugLog":Lorg/json/JSONObject;
    .end local v15    # "eventId":Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_2

    .end local v0
    .end local v15
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "retryLimit":I
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v13

    .line 65916
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "retryLimit":I
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    :goto_2
    :try_start_c
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65917
    sget-object v12, Lcom/facebook/ads/redexgen/X/Tf;->A03:Ljava/lang/String;

    const/16 v11, 0x99

    const/16 v1, 0x24

    const/16 v0, 0x44

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 65918
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v10    # "attempt":Ljava/lang/Integer;
    .end local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local v12    # "debugFile":Ljava/io/File;
    .end local v13    # "tempFileName":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15
    :catchall_0
    move-exception v2

    goto/16 :goto_8

    .line 65919
    :catch_5
    move-exception v1

    goto/16 :goto_6

    .end local p1
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    goto/16 :goto_6

    .line 65920
    .end local v0
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local p1
    .end local p2
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    goto/16 :goto_8

    .line 65921
    .end local p1
    .end local p2
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    goto/16 :goto_6

    .line 65922
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    :cond_4
    :try_start_d
    invoke-virtual {v6, v10}, Lcom/facebook/ads/redexgen/X/T8;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 65923
    const/4 v0, 0x0

    invoke-virtual {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/T8;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 65924
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 65925
    .local v0, "buffer":[B
    :goto_3
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v5, "length":I
    if-lez v1, :cond_5

    .line 65926
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 65927
    :cond_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65928
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 65929
    invoke-static {v6, v10}, Lcom/facebook/ads/redexgen/X/Tf;->A0A(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    goto :goto_4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 65930
    .end local v0    # "buffer":[B
    .end local v5    # "length":I
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    :catchall_2
    move-exception v2

    goto/16 :goto_8

    .line 65931
    :catch_8
    move-exception v1

    goto/16 :goto_6

    .line 65932
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    goto/16 :goto_8

    .line 65933
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    goto/16 :goto_6

    .line 65934
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p2
    goto/16 :goto_8

    .line 65935
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v1

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p2
    goto/16 :goto_6

    .line 65936
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_5
    move-exception v2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 65937
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 65938
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    :cond_6
    :goto_4
    :try_start_e
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Tf;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A09(Landroid/content/Context;I)V

    .line 65939
    if-lez v9, :cond_7

    .line 65940
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v11

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v2

    sget v10, Lcom/facebook/ads/redexgen/X/Td;->A2Y:I

    const/16 v12, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x63

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v1

    .end local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .local v16, "processSpecificDebugFileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .end local v12    # "debugFile":Ljava/io/File;
    .local p0, "debugFile":Ljava/io/File;
    const/16 v13, 0x16f

    const/16 v12, 0x10

    const/16 v0, 0x54

    invoke-static {v13, v12, v0}, Lcom/facebook/ads/redexgen/X/Tf;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65941
    invoke-interface {v11, v2, v10, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 65942
    .end local v11
    .end local v12
    .restart local v16    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local p0    # "debugFile":Ljava/io/File;
    :cond_7
    if-eqz v15, :cond_8
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 65943
    :try_start_f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 65944
    :cond_8
    if-eqz v8, :cond_9

    .line 65945
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 65946
    :cond_9
    if-eqz v5, :cond_a

    .line 65947
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 65948
    :cond_a
    if-eqz v3, :cond_b

    .line 65949
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 65950
    :cond_b
    if-eqz v4, :cond_c

    .line 65951
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65952
    :cond_c
    if-eqz v7, :cond_d

    .line 65953
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 65954
    :catch_c
    move-exception v1

    .line 65955
    .local v0, "ex":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65956
    :cond_d
    :goto_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65957
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 65958
    const/4 v0, 0x1

    return v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 65959
    :catch_d
    move-exception v1

    .line 65960
    .local v1, "e":Ljava/io/IOException;
    :goto_6
    :try_start_11
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65961
    if-eqz v15, :cond_e
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 65962
    :try_start_12
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 65963
    :cond_e
    if-eqz v8, :cond_f

    .line 65964
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 65965
    :cond_f
    if-eqz v5, :cond_10

    .line 65966
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 65967
    :cond_10
    if-eqz v3, :cond_11

    .line 65968
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 65969
    :cond_11
    if-eqz v4, :cond_12

    .line 65970
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65971
    :cond_12
    if-eqz v7, :cond_13

    .line 65972
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 65973
    :catch_e
    move-exception v1

    .line 65974
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65975
    :cond_13
    :goto_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65976
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 65977
    const/4 v0, 0x0

    return v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 65978
    .end local v13    # "tempFileName":Ljava/lang/String;
    .end local v16    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local p0    # "debugFile":Ljava/io/File;
    :catchall_6
    move-exception v2

    goto :goto_8

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local p1
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_7
    move-exception v2

    .line 65979
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .end local v1    # "e":Ljava/io/IOException;
    :goto_8
    if-eqz v15, :cond_14

    .line 65980
    :try_start_14
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 65981
    :cond_14
    if-eqz v8, :cond_15

    .line 65982
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 65983
    :cond_15
    if-eqz v5, :cond_16

    .line 65984
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 65985
    :cond_16
    if-eqz v3, :cond_17

    .line 65986
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 65987
    :cond_17
    if-eqz v4, :cond_18

    .line 65988
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 65989
    :cond_18
    if-eqz v7, :cond_19

    .line 65990
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 65991
    .restart local v3    # "skippedEvents":I
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v1

    .line 65992
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 65993
    :cond_19
    :goto_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65994
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65995
    .end local p3
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 65996
    .end local v3    # "skippedEvents":I
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "tempFileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v0

    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .restart local p3
    :try_start_16
    monitor-exit v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .locals 1

    .line 65997
    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A05:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Tf;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
