.class public final Lcom/google/android/gms/internal/ads/zzgks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgkg;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgce;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgoe;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgku;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgbf;Lcom/google/android/gms/internal/ads/zzgce;Lcom/google/android/gms/internal/ads/zzgoe;Lcom/google/android/gms/internal/ads/zzgku;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzb:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzc:Lcom/google/android/gms/internal/ads/zzgce;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzg:Lcom/google/android/gms/internal/ads/zzgku;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgbf;->zzb()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgbf;->zzi()Lcom/google/android/gms/internal/ads/zzgbz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgbz;->zzc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zze:Ljava/lang/String;

    return-void
.end method

.method private static zze(I)Lcom/google/android/gms/internal/ads/zzgds;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgds;->zzd()Lcom/google/android/gms/internal/ads/zzgdr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgdr;->zze(I)Lcom/google/android/gms/internal/ads/zzgdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgds;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcd;->zza()Lcom/google/android/gms/internal/ads/zzbcc;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatu;->zza()[B

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzbcc;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcc;->zzb(J)Lcom/google/android/gms/internal/ads/zzbcc;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zza:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbcc;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcc;

    .line 8
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 9
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzc:Lcom/google/android/gms/internal/ads/zzgce;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    int-to-long v4, v1

    .line 10
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbcc;->zze(J)Lcom/google/android/gms/internal/ads/zzbcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzd:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcc;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcd;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgca;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zze:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "aspq"

    .line 16
    invoke-virtual {v1, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgce;->zza(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkr;-><init>(Lcom/google/android/gms/internal/ads/zzgks;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 20
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkp;-><init>(Lcom/google/android/gms/internal/ads/zzgks;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v4, Ljava/net/UnknownHostException;

    .line 21
    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkq;-><init>(Lcom/google/android/gms/internal/ads/zzgks;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v4, Ljava/net/SocketException;

    .line 22
    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    const/16 v1, 0x4e22

    .line 23
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzgcd;)Lcom/google/android/gms/internal/ads/zzgds;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgcd;->zza()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatu;->zza()[B

    move-result-object v1

    .line 3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v1, 0x4e23

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzc(ILjava/lang/String;)V

    const/4 p1, 0x7

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x4e24

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    .line 25
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgca;->zzb(Ljava/lang/String;Z)[B

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zzb()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcf;->zzb([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzbcf;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Lcom/google/android/gms/internal/ads/zzbcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zzc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Lcom/google/android/gms/internal/ads/zzbcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzg:Lcom/google/android/gms/internal/ads/zzgku;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgku;->zza(Lcom/google/android/gms/internal/ads/zzbcf;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x4e26

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    const/16 p1, 0xc

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgds;->zzd()Lcom/google/android/gms/internal/ads/zzgdr;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zze()Lcom/google/android/gms/internal/ads/zzgdt;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Lcom/google/android/gms/internal/ads/zzbcl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb()Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdt;->zzb(Lcom/google/android/gms/internal/ads/zzbcn;)Lcom/google/android/gms/internal/ads/zzgdt;

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdr;->zzb(Lcom/google/android/gms/internal/ads/zzgdt;)Lcom/google/android/gms/internal/ads/zzgdr;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Lcom/google/android/gms/internal/ads/zzbcl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zzd()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdr;->zzc(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzgdr;

    const/4 p1, 0x2

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdr;->zze(I)Lcom/google/android/gms/internal/ads/zzgdr;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgds;

    return-object p1

    .line 12
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    .line 13
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x4e25

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzd(ILjava/lang/Throwable;)V

    const/4 p1, 0x6

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/net/UnknownHostException;)Lcom/google/android/gms/internal/ads/zzgds;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x4e27

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    const/16 p1, 0xd

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Ljava/net/SocketException;)Lcom/google/android/gms/internal/ads/zzgds;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgks;->zzf:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x4e28

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    const/16 p1, 0xd

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgks;->zze(I)Lcom/google/android/gms/internal/ads/zzgds;

    move-result-object p1

    return-object p1
.end method
