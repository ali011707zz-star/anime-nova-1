.class public final Lcom/google/android/gms/internal/ads/zzibb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzibb;

.field private static volatile zzd:Lcom/google/android/gms/internal/ads/zzibb;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzibb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzibb;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzibb;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzibb;
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzibb;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zzd:Lcom/google/android/gms/internal/ads/zzibb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/ads/zzibb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzibb;->zzd:Lcom/google/android/gms/internal/ads/zzibb;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    const-class v1, Lcom/google/android/gms/internal/ads/zzibb;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzibj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzibb;->zzd:Lcom/google/android/gms/internal/ads/zzibb;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzidc;I)Lcom/google/android/gms/internal/ads/zzibp;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziba;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziba;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzibb;->zze:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
