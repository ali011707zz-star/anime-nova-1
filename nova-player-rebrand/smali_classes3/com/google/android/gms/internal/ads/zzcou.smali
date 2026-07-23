.class final Lcom/google/android/gms/internal/ads/zzcou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcnp;

.field private zzb:Lcom/google/android/gms/internal/ads/zzdao;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zza:Lcom/google/android/gms/internal/ads/zzcnp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzb:Lcom/google/android/gms/internal/ads/zzdao;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdao;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcov;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcxl;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcxl;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzczm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzczm;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdyo;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdyo;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzb:Lcom/google/android/gms/internal/ads/zzdao;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcou;->zza:Lcom/google/android/gms/internal/ads/zzcnp;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcov;-><init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;Lcom/google/android/gms/internal/ads/zzcxl;Lcom/google/android/gms/internal/ads/zzczm;Lcom/google/android/gms/internal/ads/zzdyo;Lcom/google/android/gms/internal/ads/zzdao;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzffr;)V

    return-object v2
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdao;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzb:Lcom/google/android/gms/internal/ads/zzdao;

    return-object p0
.end method
