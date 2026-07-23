.class public abstract Lcom/google/android/gms/internal/ads/zzgpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzl()Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgoo;-><init>()V

    const v1, 0x800053

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgoo;->zzc(I)Lcom/google/android/gms/internal/ads/zzgpp;

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpp;->zzd(F)Lcom/google/android/gms/internal/ads/zzgpp;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpp;->zze(I)Lcom/google/android/gms/internal/ads/zzgpp;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpp;->zzf(I)Lcom/google/android/gms/internal/ads/zzgpp;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Landroid/os/IBinder;
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd()F
.end method

.method public abstract zze()I
.end method

.method public abstract zzf()I
.end method

.method public abstract zzg()Ljava/lang/String;
.end method

.method public abstract zzh()I
.end method

.method public abstract zzi()Ljava/lang/String;
.end method

.method public abstract zzj()Ljava/lang/String;
.end method

.method public abstract zzk()Ljava/lang/String;
.end method
