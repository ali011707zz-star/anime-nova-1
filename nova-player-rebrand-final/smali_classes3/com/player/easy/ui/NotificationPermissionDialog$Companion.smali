.class public final Lcom/player/easy/ui/NotificationPermissionDialog$Companion;
.super Ljava/lang/Object;
.source "NotificationPermissionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/player/easy/ui/NotificationPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/player/easy/ui/NotificationPermissionDialog$Companion;",
        "",
        "<init>",
        "()V",
        "isRTL",
        "",
        "shouldAsk",
        "activity",
        "Landroid/app/Activity;",
        "askLater",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotificationPermissionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationPermissionDialog.kt\ncom/player/easy/ui/NotificationPermissionDialog$Companion\n+ 2 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n*L\n1#1,176:1\n30#2:177\n30#2:179\n27#3:178\n27#3:180\n*S KotlinDebug\n*F\n+ 1 NotificationPermissionDialog.kt\ncom/player/easy/ui/NotificationPermissionDialog$Companion\n*L\n42#1:177\n48#1:179\n42#1:178\n48#1:180\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/player/easy/ui/NotificationPermissionDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final askLater()V
    .locals 10

    .line 48
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/player/easy/ui/NotificationPermissionDialog$Companion$askLater$$inlined$get$1;

    invoke-direct {v1}, Lcom/player/easy/ui/NotificationPermissionDialog$Companion$askLater$$inlined$get$1;-><init>()V

    .line 179
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Lcom/player/easy/data/preference/PreferencesHelper;

    .line 51
    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->askNotificationsDuration()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v1

    invoke-interface {v1}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    const/4 v5, 0x3

    int-to-long v5, v5

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    cmp-long v9, v1, v5

    if-gez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    int-to-long v5, v5

    mul-long/2addr v5, v7

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    int-to-long v1, v1

    mul-long v5, v1, v7

    .line 60
    :goto_0
    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->askNotificationsAfter()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->askNotificationsDuration()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final shouldAsk(Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object p1

    .line 178
    new-instance v1, Lcom/player/easy/ui/NotificationPermissionDialog$Companion$shouldAsk$$inlined$get$1;

    invoke-direct {v1}, Lcom/player/easy/ui/NotificationPermissionDialog$Companion$shouldAsk$$inlined$get$1;-><init>()V

    .line 177
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    check-cast p1, Lcom/player/easy/data/preference/PreferencesHelper;

    .line 43
    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->askNotificationsAfter()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p1

    invoke-interface {p1}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
