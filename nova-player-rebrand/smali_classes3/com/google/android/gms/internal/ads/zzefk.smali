.class final synthetic Lcom/google/android/gms/internal/ads/zzefk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzefr;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzefh;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbzu;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgyw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefr;Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzgyw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zza:Lcom/google/android/gms/internal/ads/zzefr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzb:Lcom/google/android/gms/internal/ads/zzefh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzc:Lcom/google/android/gms/internal/ads/zzbzu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzgyw;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zza:Lcom/google/android/gms/internal/ads/zzefr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzb:Lcom/google/android/gms/internal/ads/zzefh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzc:Lcom/google/android/gms/internal/ads/zzbzu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzgyw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeff;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzefr;->zzc(Lcom/google/android/gms/internal/ads/zzefh;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzeff;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
