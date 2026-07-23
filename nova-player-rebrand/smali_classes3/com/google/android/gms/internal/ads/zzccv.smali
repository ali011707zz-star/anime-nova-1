.class final synthetic Lcom/google/android/gms/internal/ads/zzccv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzccw;

.field private final synthetic zzb:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccw;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zza:Lcom/google/android/gms/internal/ads/zzccw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zza:Lcom/google/android/gms/internal/ads/zzccw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzccw;->zzc(Ljava/util/Map;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
