.class public final Lcom/google/android/gms/internal/ads/zzgjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Ljava/io/File;

.field private final zzb:Ljava/io/File;

.field private final zzc:Landroid/content/SharedPreferences;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzika;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgoe;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzc:Landroid/content/SharedPreferences;

    const-string p2, "pccache2"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfws;->zzd(Ljava/io/File;Z)Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzb:Ljava/io/File;

    const-string p2, "tmppccache2"

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfws;->zzd(Ljava/io/File;Z)Ljava/io/File;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zza:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    return-void
.end method

.method private final zzd()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbch;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzb:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v1
.end method

.method private final zze()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbch;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FBAMTD"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzf()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzd:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbch;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LATMTD"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    array-length v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zza:Ljava/io/File;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfws;->zze(Ljava/io/File;)Z

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zzc(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 7
    const-string v3, "pcam.jar"

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 7
    array-length v5, p2

    if-lez v5, :cond_1

    .line 8
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/ads/zzfws;->zzb(Ljava/io/File;[B)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 9
    :cond_1
    const-string p2, "pcbc"

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzfws;->zzb(Ljava/io/File;[B)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    :goto_0
    move p1, v2

    goto/16 :goto_1

    .line 13
    :cond_2
    invoke-static {p3, v3, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p3, p2, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v5

    invoke-static {p3, v3, v5}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v5

    invoke-static {p3, p2, v5}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 p2, 0x3bd6

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 20
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc(I)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzc:Landroid/content/SharedPreferences;

    .line 21
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    if-eqz p2, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zze()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzf()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 p2, 0x3bd8

    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    goto/16 :goto_0

    :cond_5
    move p1, v4

    goto :goto_1

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 p2, 0x3bd7

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    goto/16 :goto_0

    .line 12
    :goto_1
    new-instance p2, Ljava/util/HashSet;

    .line 32
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc(I)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 p3, 0x2

    .line 35
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc(I)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 36
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_a

    :goto_2
    array-length v0, p3

    if-ge v2, v0, :cond_a

    .line 38
    aget-object v0, p3, v2

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zzc(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfws;->zze(Ljava/io/File;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    return p1

    .line 2
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 p2, 0x3bd4

    .line 49
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    return v2
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfwq;
    .locals 5

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc(I)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x3bd3

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam.jar"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v2

    const-string v3, "pcopt"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcbc"

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfwq;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p1

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfwq;-><init>(Lcom/google/android/gms/internal/ads/zzbcp;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v3
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzc:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zzc:Landroid/content/SharedPreferences;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 5
    array-length v0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zzd(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdu;->zza()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcp;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pcam.jar"

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "pcam"

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    throw v1

    .line 9
    :cond_3
    :goto_1
    const-string v3, "pcbc"

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p1

    .line 12
    :cond_4
    throw v1

    .line 14
    :cond_5
    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjd;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x3bd5

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    :cond_6
    return-object v1
.end method
