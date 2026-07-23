.class final Lcom/google/android/gms/internal/ads/zzfgc;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbzu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfll;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zzj:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfll;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfgd;-><init>(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzflj;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgf;->zzd(Lcom/google/android/gms/internal/ads/zzfgd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgf;->zzc()Lcom/google/android/gms/internal/ads/zzfgd;

    move-result-object p1

    return-object p1
.end method
