.class public final Lcom/google/android/gms/internal/ads/zzgje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/io/File;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfvc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgoe;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/android/gms/internal/ads/zzfvc;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgje;->zza:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgje;->zzb:Lcom/google/android/gms/internal/ads/zzfvc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgje;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    return-void
.end method


# virtual methods
.method public final zza([B)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgje;->zza:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxm;->zzb(Ljava/io/File;)V

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgxm;->zza([BLjava/io/File;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgje;->zzb:Lcom/google/android/gms/internal/ads/zzfvc;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfvc;->zza(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgje;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x7eb

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzd(ILjava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgje;->zza:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return p1
.end method
