.class public final synthetic Lcom/google/android/gms/internal/ads/zzauq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzauq;

.field public static final synthetic zzb:Lcom/google/android/gms/internal/ads/zzauq;


# instance fields
.field private final synthetic zzc:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzauq;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zzb:Lcom/google/android/gms/internal/ads/zzauq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzauq;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zza:Lcom/google/android/gms/internal/ads/zzauq;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaut;-><init>()V

    return-object v0
.end method
