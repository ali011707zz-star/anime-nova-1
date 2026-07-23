.class public final Lcom/google/android/gms/internal/ads/zzfsi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Z

    return v0
.end method

.method final zzb(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfuh;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftp;->zza()Lcom/google/android/gms/internal/ads/zzftp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftp;->zzb(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftg;->zza()Lcom/google/android/gms/internal/ads/zzftg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftj;->zzd(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuc;->zza(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfud;->zza(Landroid/content/Context;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfug;->zza(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftm;->zza()Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftm;->zzc(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftf;->zza()Lcom/google/android/gms/internal/ads/zzftf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftf;->zzc(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftr;->zza()Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftr;->zzb(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
