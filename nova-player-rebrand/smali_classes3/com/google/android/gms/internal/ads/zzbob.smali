.class final synthetic Lcom/google/android/gms/internal/ads/zzbob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjm;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcrv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdjm;Lcom/google/android/gms/internal/ads/zzcrv;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbob;->zza:Lcom/google/android/gms/internal/ads/zzdjm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbob;->zzb:Lcom/google/android/gms/internal/ads/zzcrv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbob;->zza:Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbog;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdjm;)V

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "URL missing from click GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbob;->zzb:Lcom/google/android/gms/internal/ads/zzcrv;

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbog;->zza(Lcom/google/android/gms/internal/ads/zzcjl;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzboe;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzboe;-><init>(Lcom/google/android/gms/internal/ads/zzcrv;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 6
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbnl;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 7
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method
