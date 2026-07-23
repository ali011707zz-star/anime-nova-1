.class final synthetic Lcom/google/android/gms/internal/ads/zzfco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfav;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfcp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfcp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfcp;->zzc(Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfav$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzfav;Ljava/lang/Object;)V

    return-void
.end method
