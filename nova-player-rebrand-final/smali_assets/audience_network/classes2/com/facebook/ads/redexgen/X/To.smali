.class public final Lcom/facebook/ads/redexgen/X/To;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/T8;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1900
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ksHi49HeyLxhEuEQ3ZpH94jUoJqLqgaO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OjCJx3NFQ0DFgiyf16DgggNozGEs4R4q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GEO9tIl26J6KBxgfZlF82GfP7HtNAY9Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nOASZQwcdTvox6Zrqcm6Ob1f72Bs0sPe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "97ugpJwHRGNEpoGk3FmXenG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0hX3UIoeWP89IzRfugcPHePTUXouBxgf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dDjk4aEiSkmoIE6VCcWXk7EEukMkdVWT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2G0bY4RpV1kXQIyv7KcyHSXfT8fWnCKY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/To;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/To;->A02()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/To;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 1

    .line 66137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/To;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 66138
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
    .locals 0

    .line 66139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66140
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 66141
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/To;->A01:Ljava/lang/String;

    .line 66142
    return-void
.end method

.method private A00()Ljava/lang/String;
    .locals 4

    .line 66143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A01:Ljava/lang/String;

    return-object v0

    .line 66145
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v3, 0x0

    if-lt v1, v0, :cond_1

    .line 66146
    const/high16 v2, 0x4000000

    .line 66147
    .local v0, "flags":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 66148
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_2

    .line 66149
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66150
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 66151
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 66152
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/To;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/To;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x2ct
        -0x36t
        -0x28t
        -0x2bt
        -0x31t
        -0x36t
        -0x6ct
        -0x2at
        -0x35t
        -0x28t
        -0x2dt
        -0x31t
        -0x27t
        -0x27t
        -0x31t
        -0x2bt
        -0x2ct
        -0x6ct
        -0x58t
        -0x51t
        -0x4ct
        -0x56t
        -0x3bt
        -0x59t
        -0x57t
        -0x57t
        -0x55t
        -0x47t
        -0x47t
        -0x51t
        -0x58t
        -0x51t
        -0x4et
        -0x51t
        -0x46t
        -0x41t
        -0x3bt
        -0x47t
        -0x55t
        -0x48t
        -0x44t
        -0x51t
        -0x57t
        -0x55t
        -0x67t
        -0x69t
        -0x60t
        -0x69t
        -0x5ct
        -0x65t
        -0x6bt
        -0x41t
        -0x49t
        -0x42t
        -0x43t
        -0x4ct
    .end array-data
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 66153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XK;->A01(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final A04()I
    .locals 7

    .line 66154
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/To;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66155
    :catchall_0
    move-exception v1

    .line 66156
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 66157
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1M:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 66158
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 66159
    .end local v1    # "t":Ljava/lang/Throwable;
    return v6
.end method

.method public final A05()Ljava/lang/String;
    .locals 6

    .line 66160
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/To;->A00()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 66161
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 66162
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 66163
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66164
    :catchall_0
    move-exception v1

    .line 66165
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 66166
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1M:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 66167
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 66168
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 7

    .line 66169
    const/4 v6, 0x0

    .line 66170
    .local v0, "appVersionName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/To;->A00()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 66171
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66172
    :catchall_0
    move-exception v1

    .line 66173
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 66174
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1M:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 66175
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 66176
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-object v6

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public final A07()Ljava/lang/String;
    .locals 1

    .line 66177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A79()Ljava/lang/String;

    move-result-object v0

    .line 66178
    .local v0, "bundleOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66179
    return-object v0

    .line 66180
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/To;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 4

    .line 66181
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 66182
    const/16 v2, 0x34

    const/4 v1, 0x5

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T8;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 66183
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 66184
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/To;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 66185
    .local v1, "operatorName":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/To;->A03:[Ljava/lang/String;

    const-string v1, "Y0rO6junFBlFHafjvJcSeB7fUCyZ4Mo6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "E4dacaRM3DS0bJ8W8Pcl72SYoh6IL0u8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 66186
    return-object v3

    .line 66187
    .end local v1    # "operatorName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Ljava/lang/String;
    .locals 4

    .line 66188
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/To;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/To;->A03:[Ljava/lang/String;

    const-string v1, "17co7YvrhvaQQJ3lRMCxQ7nYKJi0wzqK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xVh8HKEIQLp4oZwybdpyhu7U8ElYQBbb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0A()Ljava/lang/String;
    .locals 3

    .line 66189
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0B()Ljava/lang/String;
    .locals 6

    .line 66190
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/To;->A00()Ljava/lang/String;

    move-result-object v1

    .line 66191
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_0

    .line 66192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66193
    .local v1, "installer_name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 66194
    return-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66195
    :catchall_0
    move-exception v1

    .line 66196
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    .line 66197
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1M:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 66198
    const/16 v2, 0x2d

    const/4 v1, 0x7

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 66199
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()Z
    .locals 4

    .line 66200
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/T8;

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/To;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T8;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
