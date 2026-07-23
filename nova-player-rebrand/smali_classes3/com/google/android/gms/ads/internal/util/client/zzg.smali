.class final synthetic Lcom/google/android/gms/ads/internal/util/client/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/client/zzk;


# instance fields
.field private final synthetic zza:I

.field private final synthetic zzb:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(ILjava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/client/zzg;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/client/zzg;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/util/JsonWriter;)V
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzg;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/client/zzg;->zzb:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzl(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
