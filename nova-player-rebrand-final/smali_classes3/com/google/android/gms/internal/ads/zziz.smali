.class final synthetic Lcom/google/android/gms/internal/ads/zziz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgru;


# instance fields
.field private final synthetic zza:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziz;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaeq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaeq;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zza:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafa;)V

    return-object v0
.end method
