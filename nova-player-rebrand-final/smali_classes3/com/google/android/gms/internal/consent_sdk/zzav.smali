.class public final Lcom/google/android/gms/internal/consent_sdk/zzav;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcz;->zza:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zztj;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
