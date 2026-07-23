.class final Lcom/google/android/gms/internal/ads/zzbta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcer;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsf;

.field final synthetic zzb:Ljava/lang/Object;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcen;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtd;Lcom/google/android/gms/internal/ads/zzbsf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbta;->zza:Lcom/google/android/gms/internal/ads/zzbsf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzc:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzd:Lcom/google/android/gms/internal/ads/zzbtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsm;

    .line 2
    const-string v0, "callJs > getEngine: Promise fulfilled"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzc:Lcom/google/android/gms/internal/ads/zzcen;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzd:Lcom/google/android/gms/internal/ads/zzbtd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbta;->zza:Lcom/google/android/gms/internal/ads/zzbsf;

    .line 3
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtd;->zzc(Lcom/google/android/gms/internal/ads/zzbsf;Lcom/google/android/gms/internal/ads/zzbsm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcen;)V

    return-void
.end method
