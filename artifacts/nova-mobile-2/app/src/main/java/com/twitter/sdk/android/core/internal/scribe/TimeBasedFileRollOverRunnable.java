package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import com.twitter.sdk.android.core.internal.CommonUtils;

/* loaded from: classes.dex */
public class TimeBasedFileRollOverRunnable implements Runnable {
    private final Context context;
    private final FileRollOverManager fileRollOverManager;

    public TimeBasedFileRollOverRunnable(Context context, FileRollOverManager fileRollOverManager) {
        this.context = context;
        this.fileRollOverManager = fileRollOverManager;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            CommonUtils.logControlled(this.context, "Performing time based file roll over.");
            if (this.fileRollOverManager.rollFileOver()) {
                return;
            }
            this.fileRollOverManager.cancelTimeBasedFileRollOver();
        } catch (Exception e10) {
            CommonUtils.logControlledError(this.context, "Failed to roll over file", e10);
        }
    }
}
