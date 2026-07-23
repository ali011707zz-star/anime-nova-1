.class final Lcom/google/android/gms/internal/ads/zzdrd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrp;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Failed to load media data due to video view load failure."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Lcom/google/android/gms/internal/ads/zzcen;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzchd;-><init>(Lcom/google/android/gms/internal/ads/zzchc;)V

    const-string v0, "/video"

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzI()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenv;

    const/4 v1, 0x1

    const-string v2, "Missing webview from video view future."

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
