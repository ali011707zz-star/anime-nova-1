.class final Lcom/google/android/gms/internal/ads/zzfgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfgf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeff;

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgd;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgf;->zzb()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfgd;-><init>(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzflj;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgf;->zzd(Lcom/google/android/gms/internal/ads/zzfgd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgf;->zzc()Lcom/google/android/gms/internal/ads/zzfgd;

    move-result-object p1

    return-object p1
.end method
